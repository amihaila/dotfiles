" -- General Settings {{{
syntax enable
set tabstop=4
set shiftwidth=4
set pastetoggle=<F10>
set number
set autoindent
set smartindent
inoremap jj <ESC>

inoremap {{ <ESC>A {<ENTER>}<ESC>O
map <SPACE> zz
map U <C-R>

let mapleader = ","
nmap <leader>x :x<CR>
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>e :e 
" -- }}}

" -- Split Nav {{{
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
" -- }}}

" -- Tab Nav {{{
nnoremap <c-p> :tabnext<CR>
nnoremap <c-u> :tabprevious<CR>
nnoremap <c-n> :tabnew<CR>
" -- }}}

" -- FileType specific Settings {{{
augroup FileTypeGroup
    autocmd!
    " arduino and processing files have c++ syntax highlighting
    autocmd BufNewFile,BufReadPost *.ino,*.pde setlocal filetype=cpp 
    autocmd FileType vim setlocal foldmethod=marker
    autocmd FileType cpp,c setlocal foldmethod=syntax
    autocmd FileType python setlocal foldmethod=indent
    autocmd FileType make setlocal noexpandtab
    autocmd FileType tex,plaintex setlocal makeprg=pdflatex\ % foldmethod=marker
    autocmd FileType java setlocal makeprg=javac\ %
    autocmd FileType java nmap <leader>r :!java %:r<CR>
augroup END
" -- }}}

execute pathogen#infect()
filetype plugin on

set background=dark

" -- Colors and Things {{{
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic
highlight Comment ctermfg=blue
"autocmd BufRead,BufNewFile * syn match parens /[(){}]/ | hi parens ctermfg=DarkBlue
"' -- }}}

" -- Airline Stuff {{{
set laststatus=2
let g:airline_powerline_fonts = 1
set encoding=utf-8
if !exists('g:airline_symbols')
	  let g:airline_symbols = {}
	  endif
let g:airline_theme = 'luna'

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
" -- }}}

" -- Commenter Stuff {{{
let g:NERDCompactSexyComs = 1
let g:NERDTrimTrailingWhitespace = 1
" -- }}}


" -- Tab Completion {{{
function! Tab_Or_Complete() 		"use tab to autocomplete words
	if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
		return "\<C-N>"
	else
		return "\<Tab>"
	endif
endfunction

:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
" -- }}}
