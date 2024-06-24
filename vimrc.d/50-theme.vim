" Terminal-related settings

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Needed for kitty not to f*ck up the background color
let &t_ut=''

set background=dark
let g:miramare_enable_italic = 0
let g:miramare_disable_italic_comment = 1
let g:miramare_transparent_background = 0
colorscheme miramare
"let g:airline_theme='hybrid'
let g:enable_bold_font = 1
let g:enable_italic_font = 1
set laststatus=2
let g:colorscheme = 'miramare'

" Toggle light/dark mode
function! LightOrDarkness()
    if &background==?"dark"
        set background=light
        colorscheme gitgo
    elseif &background==?"light"
        set background=dark
        execute 'colorscheme ' . g:colorscheme
    endif
endfunction

" Toggle transparent background
function! ToggleTransparentBg()
    if g:miramare_transparent_background == 0
        let g:miramare_transparent_background = 1
    else
        let g:miramare_transparent_background = 0
    endif
    colorscheme miramare
endfunction
