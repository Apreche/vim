call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'nvie/vim-flake8', {'for': 'python'}
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

set termguicolors
set background=light
syntax on
filetype plugin indent on
colorscheme onehalflight

set guifont=Source\ Code\ Pro\ 12
set guioptions-=rL  " remove scrollbars

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
set backupdir=/tmp
set directory=/tmp

"CtrlP
let g:ctrlp_map = '<c-n>'
let g:ctrlp_show_hidden = 1

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
    colorscheme onehalfdark
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
