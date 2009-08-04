filetype plugin on
filetype indent on
syntax on
colorscheme molokai

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent

set showmatch
set incsearch
set backspace=2
set ruler

"python smartindent
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class 
"python remove trailing whitespace
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
let python_highlight_all = 1

"special highlighting in php
let php_sql_query = 1
let php_htmlInStrings = 1
let php_baselib = 1

"highlight json
au! BufRead,BufNewFile *.json setfiletype json 
"highlight jquery
au BufRead,BufNewFile *.js set ft=javascript.jquery

"warning when going over 80 characters per line
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.*/
