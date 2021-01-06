call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle' }
Plug 'nvie/vim-flake8', {'for': 'python'}
call plug#end()

set termguicolors
set background=dark
syntax on
filetype plugin indent on
colorscheme onehalfdark

set cursorline
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
set visualbell
set noerrorbells
set laststatus=2
set updatetime=100  " so gitgutter updates faster

set statusline=%1*%m%r%#StatusLine#:%F%=%c:\%l/%L

nnoremap ; :nohlsearch<CR>
set pastetoggle=<F2>
set backup
set noswapfile
set backupdir=$HOME\vimtemp
set directory=$HOME\vimtemp

"NERDTree
let NERDTreeChDirMode=1
let NERDTreeIgnore=['\.pyc$', '\.swp$']
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI=1
let NERDTreeShowBookmarks=1
map <C-n> :NERDTreeToggle<CR>

"python remove trailing whitespace
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
"python highlighting extras
let python_highlight_all=1

let g:gitgutter_git_executable = 'C:\Program Files\Git\bin\git.exe'
