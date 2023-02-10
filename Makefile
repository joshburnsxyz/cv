.PHONY: clean

CC = xelatex
SRC_DIR = src
CV_DIR = src/cv
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

all: cv.pdf coverletter.pdf

cv.pdf: $(SRC_DIR)/cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(SRC_DIR) $<

coverletter.pdf: $(SRC_DIR)/coverletter.tex
	$(CC) -output-directory=$(SRC_DIR) $<

clean:
	rm -f $(SRC_DIR)/*.pdf
	rm -f $(SRC_DIR)/*.aux
	rm -f $(SRC_DIR)/*.log
