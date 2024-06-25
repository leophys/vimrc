let $VIMHOME = expand('~/.vim')
let s:user_dir = $VIMHOME
" check if in tty
let g:is_tty = system('case $(tty) in (/dev/tty[0-9]) echo 1;; (*) echo 0;; esac')
" set for kitty terminal usage
if $TERM == "xterm-kitty"
    set term=kitty
endif

""" Set python3 path
let g:python3_host_prog = "/usr/bin/python"
let g:python_host_prog='/usr/bin/python'

""" leader mapping
let mapleader = ','

""" Not vi compatible
set nocompatible
