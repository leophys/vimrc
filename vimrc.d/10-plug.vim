call plug#begin($VIMHOME . "/.plug")

" utility
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-fugitive'
Plug 'haya14busa/vim-poweryank'
Plug 'yssl/QFEnter'

" cosmetic
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'vim-airline/vim-airline'
Plug 'preservim/vim-indent-guides'

" theme
Plug 'franbach/miramare'
Plug 'bitfield/vim-gitgo'

" lsp
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'rhysd/vim-healthcheck'

" languages
Plug 'rust-lang/rust.vim'
Plug 'charlespascoe/vim-go-syntax'

call plug#end()
