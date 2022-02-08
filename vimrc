set nocompatible

" --- General Settings ---
set backspace=indent,eol,start

set path-=/usr/include
set autoread

set ruler
set number

set showcmd

set incsearch

set ignorecase
set smartcase

set expandtab

set hidden
set splitbelow

set wildmenu
set wildmode=full
set wildignorecase

set laststatus=1

set mouse=a
set nowrap

nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

let loaded_netrwPlugin = 1

" --- Macro Settings ---
runtime macros/matchit.vim

" --- Find Refactor Rename ---
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>}]
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

" --- Movement Settings ---
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

let &t_SI.="\e[5 q"
let &t_SR.="\e[4 q"
let &t_EI.="\e[1 q"

" --- White Space Settings ---
nmap <silent> <Leader>w :set list!<CR>

set listchars=tab:▸\ ,eol:¬,trail:⋅,space:⋅,extends:❯,precedes:❮
set fillchars=vert:\ ,
set showbreak=↪

autocmd BufWritePre * %s/\s\+$//e

" --- Syntax & Color Settings ---
filetype plugin indent on

syntax on
colorscheme ansi
