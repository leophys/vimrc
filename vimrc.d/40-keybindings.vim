nnoremap <silent> <C-d> :bd<CR>
nnoremap <leader>r :redo<CR>
nnoremap <C-h> <C-w><Left>
nnoremap <C-j> <C-w><Down>
nnoremap <C-k> <C-w><Up>
nnoremap <C-l> <C-w><Right>
nnoremap <leader>b :Gblame<CR>
nnoremap <C-p> :FZF<CR>
nnoremap <leader>f :Buffers<CR>
nnoremap <C-F> :Files<CR>
nnoremap <C-g> :Rg<CR>
nnoremap <leader>k :exe "Rg  " . expand("<cword>")<cr>
nnoremap <leader>s :call Fzf_dev()<CR>
nnoremap <leader>c :Commits<CR>
nnoremap <leader>b :Git blame<CR>
nnoremap <leader>gh :exe "Git log -L:" . expand("<cword>") . ":" . expand("%")<cr>
nnoremap <leader><esc> :silent! nohls<CR>:call clearmatches()<CR>
nnoremap <leader><Tab> :bnext<CR>
nnoremap <leader>\ :bprev<CR>
nnoremap <Leader>m <Plug>ToggleMarkbar
nnoremap <Leader>mo <Plug>OpenMarkbar
nnoremap <Leader>mc <Plug>CloseMarkbar
nnoremap <Leader>L :call LightOrDarkness()<CR>
nnoremap <Leader>T :call ToggleTransparentBg()<CR>
map <Leader>y <Plug>(operator-poweryank-osc52)
" Following three from here: https://github.com/vim/vim/issues/5157#issue-516033639
xnoremap "+y y:call system("wl-copy", @")<cr>
nnoremap "+p :let @"=substitute(system("wl-paste --no-newline"), '<C-v><C-m>', '', 'g')<cr>p
nnoremap "*p :let @"=substitute(system("wl-paste --no-newline --primary"), '<C-v><C-m>', '', 'g')<cr>p
nnoremap <Leader>u :UndotreeShow<CR>:UndotreeFocus<CR>
" highlight the current line
"nnoremap l :call matchadd('LineHighlight', '\%'.line('.').'l')<CR>

" Limelight and Goyo
nnoremap <Leader>l :Limelight!!<CR>
xnoremap <Leader>l :Limelight!!<CR>
nnoremap <Leader>G :Goyo<CR>
xnoremap <Leader>G :Goyo<CR>

" Move lines
nnoremap <silent> <C-Down> :m .+1<CR>==
nnoremap <silent> <C-Up> :m .-2<CR>==
inoremap <silent> <C-Down> <Esc>:m .+1<CR>==gi
inoremap <silent> <C-Up> <Esc>:m .-2<CR>==gi
vnoremap <silent> <C-Down> :m '>+1<CR>gv=gv
vnoremap <silent> <C-Up> :m '<-2<CR>gv=gv
