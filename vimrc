set nocompatible
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
call plug#end()

set termguicolors
set background=light
colorscheme onehalflight
syntax on

set guifont=JetBrains_Mono:h14:cANSI:qDRAFT
set guioptions-=rL  " remove scrollbars
set renderoptions=type:directx,geom:1,taamode:1,level:0.5,renmode:5,gamma:1.5,contrast:0.5

set cursorline
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
set backupdir=$HOME\vimtemp
set directory=$HOME\vimtemp

nnoremap ; :nohlsearch<CR>

"CtrlP
let g:ctrlp_map = '<c-n>'
let g:ctrlp_show_hidden = 1
let g:ctrlp_open_new_file = 't'

"Airline
let g:airline_powerline_fonts = 1
let g:airline_section_z = "%l/%L:%c"

"Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers=['flake8']

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
