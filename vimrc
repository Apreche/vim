set nocompatible

call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
call plug#end()

set termguicolors
set background=dark
" colorscheme onehalfdark
syntax on

set guifont=Berkeley\ Mono
set guioptions-=r  " Remove scrollbar
set guioptions-=T  " Remove toolbar
set guioptions+=d  " dark mode

set cursorline
hi CursorLine term=NONE cterm=NONE ctermbg=242 guibg=Grey40
hi CursorLineNr term=bold cterm=bold gui=bold

set shiftround
set showmatch
set hlsearch
set incsearch
set scrolloff=5
set backspace=2
set number
set visualbell
set noerrorbells
set laststatus=2
set updatetime=100  " so gitgutter updates faster
set pastetoggle=<F2>
set backup
set backupdir=/tmp
set directory=/tmp

nnoremap ; :nohlsearch<CR>

"CtrlP
let g:ctrlp_map = '<c-n>'
let g:ctrlp_show_hidden = 1
let g:ctrlp_open_new_file = 't'

"Airline
let g:airline_powerline_fonts = 0
let g:airline_section_z = "%l/%L:%c"

"Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers=['flake8']
