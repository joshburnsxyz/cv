
CC = xelatex
SRC_DIR = src
CV_DIR = src/cv
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')
DOCKER_CMD = docker run --rm --user $(shell id -u):$(shell id -g) -i -w "/doc" -v $(shell pwd):/doc thomasweise/texlive

all: cv.pdf coverletter.pdf

cv.pdf: $(SRC_DIR)/cv.tex $(CV_SRCS)
	$(DOCKER_CMD) $(CC) -output-directory=$(SRC_DIR) $<
	@mv $(SRC_DIR)/cv.pdf ./cv.pdf

coverletter.pdf: $(SRC_DIR)/coverletter.tex
	$(DOCKER_CMD) $(CC) -output-directory=$(SRC_DIR) $<
	@mv $(SRC_DIR)/coverletter.pdf ./coverletter.pdf

clean:
	rm -f $(SRC_DIR)/*.pdf
	rm -f $(SRC_DIR)/*.aux
	rm -f $(SRC_DIR)/*.log

.PHONY: clean all