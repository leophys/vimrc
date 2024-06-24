" Activate detection, plugin and indentation
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Generate all documentation from help files of plugins
silent! helptags ALL

" Enable persistent undo
set undodir=$VIMHOME/.undo/
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

" Automatically re-open files after they have changed without prompting.
" This can be a little more destructive, but a lot less annoying.
set autoread

" Use the current line indentation for the next line
set autoindent

" Briefly show the matching bracket, when inserting one
set showmatch

" Put all special files in the right place
set backupdir=$VIMHOME/.backup/
set directory=$VIMHOME/.swp/

" Distinguish tabs and spaces visually, show trailing spaces
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. 
set list

" Default to spaces instead of tabs
set expandtab
set tabstop=4
set shiftwidth=0
set softtabstop=0

" Disable automatic wrapping
set textwidth=0

" Enable highlight on search patterns
set hlsearch
set incsearch
hi Search guibg=Purple

" Ignore case when no upper case letter is in pattern
set smartcase

" Define line highlight color
highlight LineHighlight ctermbg=darkgray guibg=Purple

" viminfo settings
" '100 : Remember marks for 100 previously edited files.
" <50  : ???
" s10  : ???
" h    : ???
" "100 : Save 100 lines for each register
" :50  : Remember 50 lines of command history
set viminfo='100,<50,s10,h,\"100,:500

" Warn about not being able to write to .viminfo, which messes up restoring
" the cursor position when editing.
let s:info_filename = expand('~/.viminfo')

if !empty(glob(s:info_filename)) && !filewritable(s:info_filename)
    echoerr 'The .viminfo file cannot be written to!'
endif

" Jump at last opened cursor position position, if valid
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Improved command completion
set wildmenu

" Show line numbers
set number

" Default to all folds open
set nofoldenable
