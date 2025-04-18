" Actions on history
nnoremap <leader>r :redo<CR>
nnoremap <Leader>u :UndotreeShow<CR>:UndotreeFocus<CR>

" Actions on panes and windows
nnoremap <silent> <C-d> :bd<CR>
nnoremap <C-h> <C-w><Left>
nnoremap <C-j> <C-w><Down>
nnoremap <C-k> <C-w><Up>
nnoremap <C-l> <C-w><Right>
nnoremap <leader>q :cclose<CR>
nnoremap <leader><Tab> :bnext<CR>
nnoremap <leader>\ :bprev<CR>

" Info and search plugins
""" Git related
nnoremap <leader>c :Commits<CR>
nnoremap <leader>b :Git blame<CR>
nnoremap <leader>gh :exe "Git log -L:" . expand("<cword>") . ":" . expand("%")<cr>
""" FZF related
nnoremap <C-p> :FZF<CR>
nnoremap <leader>f :Buffers<CR>
nnoremap <C-f> :Files<CR>
nnoremap <C-g> :Rg<CR>
nnoremap <leader>k :exe "Rg  " . expand("<cword>")<cr>

" cosmetic
nnoremap <leader><esc> :silent! nohls<CR>:call clearmatches()<CR>
""" Limelight and Goyo
nnoremap <Leader>l :Limelight!!<CR>
xnoremap <Leader>l :Limelight!!<CR>
nnoremap <Leader>G :Goyo<CR>
xnoremap <Leader>G :Goyo<CR>
""" Theme-related
nnoremap <Leader>L :call LightOrDarkness()<CR>
nnoremap <Leader>T :call ToggleTransparentBg()<CR>
""" IndentLines
nnoremap <Leader>i :IndentGuidesToggle<CR>

" Move lines
nnoremap <silent> <C-Down> :m .+1<CR>==
nnoremap <silent> <C-Up> :m .-2<CR>==
inoremap <silent> <C-Down> <Esc>:m .+1<CR>==gi
inoremap <silent> <C-Up> <Esc>:m .-2<CR>==gi
vnoremap <silent> <C-Down> :m '>+1<CR>gv=gv
vnoremap <silent> <C-Up> :m '<-2<CR>gv=gv

vnoremap <leader>y <Plug>(operator-poweryank-osc52)
