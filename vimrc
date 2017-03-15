" General
syntax enable
set tabstop=4
set shiftwidth=4
set pastetoggle=<F2>
set number
set autoindent
set smartindent
inoremap jj <ESC>

inoremap {{ <ESC>A {<ENTER>}<ESC>O
map mm I//<ESC>
map MM ^2x
map <SPACE> zz
map U <C-R>

" split navigation
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" tab navigation
nnoremap <c-p> :tabnext<CR>
nnoremap <c-u> :tabprevious<CR>
nnoremap <c-n> :tabnew<CR>

let mapleader = ","
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>e :e 

execute pathogen#infect()
filetype plugin on

set background=dark
colorscheme solarized

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic
highlight Comment ctermfg=Magenta
"autocmd BufRead,BufNewFile * syn match parens /[(){}]/ | hi parens ctermfg=DarkBlue

"airline stuff
set laststatus=2
let g:airline_powerline_fonts = 1
set encoding=utf-8
if !exists('g:airline_symbols')
	  let g:airline_symbols = {}
	  endif

" unicode symbols
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.crypt = ''
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ' ☰'
"let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
"let g:airline_symbols.spell = 'Ꞩ'
"let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

"commenter stuff
let g:NERDCompactSexyComs = 1
let g:NERDTrimTrailingWhitespace = 1


function! Tab_Or_Complete() 		"use tab to autocomplete words
	if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
		return "\<C-N>"
	else
		return "\<Tab>"
	endif
endfunction

:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
