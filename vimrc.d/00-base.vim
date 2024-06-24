let $VIMHOME = expand('~/.vim')
let s:sep = has('win32') ? '\' : '/'
" check if in tty
let g:is_tty = system('case $(tty) in (/dev/tty[0-9]) echo 1;; (*) echo 0;; esac')

" set user_dir
if has('nvim')
  let s:user_dir = stdpath('config')
else
  let s:user_dir = has('win32') ? expand('~/vimfiles') : expand('~/.vim')
endif

""" Set python3 path
let g:python3_host_prog = "/usr/bin/python"
let g:python_host_prog='/usr/bin/python'

""" leader mapping
let mapleader = ','

""" Not vi compatible
set nocompatible
