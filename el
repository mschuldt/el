#!/bin/bash

if [ $1 ]; then
    emacs --quick --no-init-file --script $@
else
    emacs -nw --no-init-file --quick --no-site-lisp --no-bitmap-icon --eval "(progn (menu-bar-mode -1) (tool-bar-mode -1) (scroll-bar-mode -1) (ielm) (setq mode-line-format nil) (message \"\"))"
fi
