cv.html:
  emacs \
    -u "$(id -un)" \
    --batch \
    --eval '(load user-init-file)' \
    cv.org \
    -f org-export-to-html

cv.pdf:
  emacs \
      -u "$(id -un)" \
      --batch \
      --eval '(load user-init-file)' \
      foo.org \
      -f org-export-to-pdf
