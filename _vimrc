version 6.0
set nocompatible " be iMproved, req'd by vundle

filetype off " req'd by vundle

" set runtime path to include vundle and init it
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() " or ('~/path/to/install/plugins/here')

Plugin 'VundleVim/Vundle.vim'

Plugin 'godlygeek/tabular'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-markdown'

Plugin 'vim-ruby/vim-ruby'


call vundle#end()

"execute pathogen#infect()

syntax on

filetype plugin indent on


set hlsearch
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
set list listchars=tab:»·,trail:·,eol:$
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set termencoding=utf-8
set encoding=utf-8
set window=55
set relativenumber
set number
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

colors desert

set laststatus=2 " always show status line
set statusline=%f\ %y\ %r\ \(y=%l/%L,x=%c\)\ \|\ %{fugitive#statusline()}
