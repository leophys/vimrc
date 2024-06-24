let $VIMHOME = expand('~/.vim')

for conf in split(glob($VIMHOME . '/vimrc.d/*.vim'), '\n')
    exe 'source' conf
endfor
