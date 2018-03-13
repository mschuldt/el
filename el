#!/bin/bash

if [ $1 ]; then
    emacs --quick --no-init-file --script $@
else
    emacs -nw --no-init-file --quick --no-site-lisp --no-bitmap-icon -f ielm
fi
