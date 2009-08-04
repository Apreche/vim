" Vim color file
" Maintainer:	Scott Rubin <apreche@frontrowcrew.com>
" Last Change:	2008 Nov 08 

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "scott"

" Normal should come first
hi Normal guifg=white guibg=black
