call plug#begin()
Plug 'sonph/onehalf', {'rtp': 'vim'}
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle' }
Plug 'nvie/vim-flake8', {'for': 'python'}
call plug#end()

set t_8f=[38;2;%lu;%lu;%lum        " set foreground color
set t_8b=[48;2;%lu;%lu;%lum        " set background color
colorscheme onehalflight
set t_Co=256                         " Enable 256 colors
set termguicolors                    " Enable GUI colors for the terminal to get truecolor

syntax on
set cursorline
set background=light
filetype plugin indent on

set guifont=JetBrains\ Mono\ 12
set guioptions-=rL

set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set shiftround
set autoindent
set copyindent
set ignorecase
set smartcase
set showmatch
set hlsearch
set incsearch
set scrolloff=5
set backspace=2
set number
set ruler
set visualbell
set noerrorbells
set laststatus=2

set statusline=%1*%m%r%#StatusLine#:%F%=%c:\%l/%L
hi User1 ctermbg=black ctermfg=red guibg=black guifg=red

nnoremap ; :nohlsearch<CR>
set pastetoggle=<F2>
set backup
set backupdir=/tmp
set directory=/tmp

"NERDTree
let NERDTreeChDirMode=1
let NERDTreeIgnore=['\.pyc$', '\.swp$']
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI=1
let NERDTreeShowBookmarks=1
map <C-n> :NERDTreeToggle<CR>

"Flake8
autocmd BufWritePost *.py call Flake8()
"python remove trailing whitespace
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
"python highlighting extras
let python_highlight_all=1
let g:flake8_show_in_gutter=0
