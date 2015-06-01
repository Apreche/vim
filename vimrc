set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'

call vundle#end()

filetype plugin indent on
set background=light
colorscheme Tomorrow

if &t_Co > 2 || has("gui_running")
    syntax on
endif

if has("win32")
    set guifont=Source_Code_Pro:h12:cANSI
else
    set guifont=Source\ Code\ Pro\ 12
endif

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
set statusline=%n\ %F\ %m%r\%=%c-%l/%L

nnoremap ; :nohlsearch<CR>
set pastetoggle=<F2>

if has("unix")
    set backup
    set backupdir=/tmp
    set directory=/tmp
elseif has("win32")
    set backup
    set backupdir=C:\Windows\Temp
    set noswapfile
endif

"NERDTree
let NERDTreeChDirMode=1
let NERDTreeIgnore=['\.pyc$', '\.swp$']
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI=1
let NERDTreeShowBookmarks=1
map <C-n> :NERDTreeToggle<CR>

autocmd BufWritePost *.py call Flake8()
"python remove trailing whitespace
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
"python highlighting extras
let python_highlight_all=1
let g:flake8_max_line_length=99
let g:flake8_show_in_gutter=0

"PHP highlighting extras
let php_sql_query=1
let php_htmlInStrings=1
let php_baselib=1
