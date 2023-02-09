# My CV

This is the LaTEX source for my CV & Cover Letter. Built using [Awesome-CV](https://github.com/posquit0/Awesome-CV).

Build the PDF with docker and texlive.

```bash
docker run --rm --user $(id -u):$(id -g) -i -w "/doc" -v "$PWD":/doc thomasweise/texlive make
```