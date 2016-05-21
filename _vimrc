version 6.0
colors desert
set nocompatible
set background=dark
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set history=50
set nomodeline
set mouse=a
set printoptions=paper:letter
set ruler
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
filetype indent on
set list listchars=tab:»·,trail:·,eol:$
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set termencoding=utf-8
set encoding=utf-8
set window=55
set relativenumber
set undofile
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80
"map <F12> :w<CR>:!scp % jgibson@jgibson-mc:<CR>
let c_space_errors = 1
syn on
set guifont=Menlo\ Regular:h10
set clipboard=unnamed

" Python tabs
au BufNewFile,BufRead *.py setlocal tabstop=4
au BufNewFile,BufRead *.py setlocal shiftwidth=4
au BufNewFile,BufRead *.py map <Leader>p :w<CR>:!python %<CR>

" Ruby tabs
au BufNewFile,BufRead *.(rb|erb) setlocal tabstop=2
au BufNewFile,BufRead *.(rb|erb) setlocal shiftwidth=2
au BufNewFile,BufRead *.(rb|erb) map <Leader>p :w<CR>:!ruby %<CR>

" ^BS kills trailing whitespace
map <leader>w :%s/\s\+$//<cr>
