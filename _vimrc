version 8.0
set nocompatible " be iMproved, req'd by vundle

filetype off " req'd by vundle

packadd! matchit

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

"Plugin 'altercation/vim-colors-solarized'

call vundle#end()

"execute pathogen#infect()

syntax on

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

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
"set guifont=Menlo\ Regular:h10
set guifont=Input\ Semi-Condensed\ 10
set guioptions=aegimrLt
set clipboard=unnamed

if has("autocmd")
  autocmd FileType ruby set omnifunc=rubycomplete#Complete
  autocmd FileType ruby let g:rubycomplete_buffer_loading=1
  autocmd FileType ruby let g:rubycomplete_classes_in_global=1
endif

" Python tabs
au BufNewFile,BufRead *.py setlocal tabstop=4
au BufNewFile,BufRead *.py setlocal shiftwidth=4
au BufNewFile,BufRead *.py map <Leader>p :w<CR>:!python %<CR>

" Ruby tabs
au BufNewFile,BufRead *.rb,*.erb setlocal tabstop=2
au BufNewFile,BufRead *.rb,*.erb setlocal shiftwidth=2
au BufNewFile,BufRead *.rb,*.erb map <Leader>p :w<CR>:!ruby %<CR>

" CSV/TSV tabs
au BufNewFile,BufRead *.csv,*.tsv setlocal tabstop=4
au BufNewFile,BufRead *.csv,*.tsv setlocal shiftwidth=4
au BufNewFile,BufRead *.csv,*.tsv setlocal noexpandtab

" Markdown tabs
au BufNewFile,BufRead *.md,*.markdown setlocal tabstop=4
au BufNewFile,BufRead *.md,*.markdown setlocal shiftwidth=4

" \r calls rubocop on the current file
map <leader>r :!rubocop %

" \w kills trailing whitespace
map <leader>w :%s/\s\+$//<cr>

" \c runs ctags on the current directory
map <leader>c :!ctags -R .

" \h gets the highlighting type for the word under the cursor
map <leader>h :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Solarized colors, and toggle light/dark with F5
"colors solarized
"call togglebg#map("<F5>")

set laststatus=2 " always show status line
set statusline=%f\ %y\ %r\ \(y=%l/%L,x=%c\)\ \|\ %{fugitive#statusline()}

colors jcg
