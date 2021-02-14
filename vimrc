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

" TODO: AutoResize
" TODO: Last Status
" TODO: Dim inactive
set termwinsize=8*0

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

" --- White Space Settings ---
nmap <silent> <Leader>w :set list!<CR>

set listchars=tab:▸\ ,eol:¬,trail:⋅,space:⋅,extends:❯,precedes:❮
set fillchars=vert:\ ,
set showbreak=↪

autocmd BufWritePre * %s/\s\+$//e

" --- QuickFix Settings ---
let g:qf_max_height = 12

" --- Grep Settings ---
if executable('rg')
  set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
endif

" --- Syntax & Color Settings ---
filetype plugin indent on

set bg=dark
syntax on

colorscheme ansi
