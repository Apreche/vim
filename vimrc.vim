filetype on
filetype plugin on
filetype indent on

if &t_Co >= 256 || has("gui_running")
    colorscheme wombat256
endif
if &t_Co >= 16 && &t_Co < 256
    colorscheme wombat
endif
if &t_Co > 2 || has("gui_running")
    syntax on
endif

if has("gui_running")
    set lines=60
    set columns=84
endif

if has("win32") && has("gui_running")
    set guifont=ProggyCleanTTSZ:h12:cANSI
elseif !has("macunix") && has("gui_running")
    set guifont=ProggyCleanTTSZ\ 12
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
nnoremap ; :nohlsearch<CR>

set scrolloff=5
set backspace=2
set number
set ruler

set visualbell
set noerrorbells

set pastetoggle=<F2>

"python remove trailing whitespace
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
"python highlighting extras
let python_highlight_all = 1

"PHP highlighting extras
let php_sql_query = 1
let php_htmlInStrings = 1
let php_baselib = 1

"warning when going over 80 characters per line
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.*/
