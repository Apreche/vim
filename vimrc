call plug#begin()
Plug 'chriskempson/base16-vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle' }
Plug 'nvie/vim-flake8', {'for': 'python'}
call plug#end()

set termguicolors
set background=light
syntax on
filetype plugin indent on
colorscheme base16-tomorrow

set guifont=Source\ Code\ Pro\ Regular\ 12
set guioptions-=rL  " remove scrollbars

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
highlight LineNr ctermbg=white guibg=white

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

"Windows Terminal Fixes
" These variables are only set when running Windows Terminal
if !empty($WT_SESSION) && !empty($WT_PROFILE_ID)
    " Can't change cursor color from white, must use dark scheme
    set background=dark
    colorscheme base16-tomorrow-night
    " If X isn't running, vim won't launch properly without this setting
    set clipboard=autoselect,exclude:.*
    " Need to change cursor shape a special way
    let &t_EI .= "\e[1 q"
    let &t_SI .= "\e[5 q"
    augroup windows_term
        autocmd!
        autocmd VimEnter * silent !echo -ne "\e[1 q"
        autocmd VimLeave * silent !echo -ne "\e[5 q"
    augroup END
endif
