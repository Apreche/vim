call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-syntastic/syntastic'
call plug#end()

set termguicolors
set background=light
syntax on
filetype plugin indent on
colorscheme onehalflight

set guifont=JetBrains_Mono:h14:cANSI:qDRAFT
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
set noswapfile
set backupdir=$HOME\vimtemp
set directory=$HOME\vimtemp

"HTML
autocmd FileType html,htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2

"CtrlP
let g:ctrlp_map = '<c-n>'
let g:ctrlp_show_hidden = 1
let g:ctrlp_open_new_file = 't'

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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
