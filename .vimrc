"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set to auto read when a file is changed from the outside
set autoread


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax enable

set background=dark
colorscheme slate 
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

""""""""""""""""""""""""""""""
" => some file extensions 
""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.twig setlocal syntax=html
au BufNewFile,BufRead *.less setlocal syntax=css


set runtimepath+=~/.vim/bundle/vim-jade/
au BufnewFile,BufRead *.jade setlocal syntax=jade

""""""""""""""""""""""""""""""
" => plugins
""""""""""""""""""""""""""""""
set runtimepath+=~/.vim/bundle/jshint2.vim/

let jshint2_read=1
let jshint2_save=1
let jshint2_close=0
let jshint2_confirm=0
let jshint2_height=5

" jshint validation
nnoremap <silent><F2> :JSHint<CR>
inoremap <silent><F2> <C-O>:JSHint<CR>
vnoremap <silent><F2> :JSHint<CR>

" show next jshint error
nnoremap <silent><F3> :lnext<CR>
inoremap <silent><F3> <C-O>:lnext<CR>
vnoremap <silent><F3> :lnext<CR>

" show previous jshint error
nnoremap <silent><F4> :lprevious<CR>
inoremap <silent><F4> <C-O>:lprevious<CR>
vnoremap <silent><F4> :lprevious<CR>
