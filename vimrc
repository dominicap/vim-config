scriptencoding utf-8
set encoding=utf-8

set nocompatible
filetype off

" --- General Settings ---
set backspace=indent,eol,start
set ruler
set number
set relativenumber
set showcmd
set incsearch
set hlsearch
set mouse=a
set hidden

set autoindent

autocmd Filetype ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype swift setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype julia setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype coffee setlocal tabstop=2 shiftwidth=2 softtabstop=2

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

nnoremap <silent> <C-l> :nohl<CR><C-l>

" --- Format Settings ---
autocmd FileType json autocmd BufWritePre <buffer> %!python -m json.tool

" --- Comment Settings ---
autocmd FileType swift setlocal commentstring=//\ %s

" --- I-Beam Settings ---
if has('unix')
    if has("autocmd")
        au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
        au InsertEnter,InsertChange *
                    \ if v:insertmode == 'i' |
                    \   silent execute '!echo -ne "\e[6 q"' | redraw! |
                    \ elseif v:insertmode == 'r' |
                    \   silent execute '!echo -ne "\e[4 q"' | redraw! |
                    \ endif
        au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
    endif
endif

" --- Macro Settings ---
runtime macros/matchit.vim

" --- Find Refactor Rename ---
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>}]
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

" --- White Space Settings ---
nmap <leader>l :set list!<CR>

set listchars=tab:▸\ ,eol:¬,trail:⋅,space:⋅,extends:❯,precedes:❮
set showbreak=↪

autocmd BufWritePre * %s/\s\+$//e

" --- Color Settings ---
let g:airline_theme='serene'

set t_Co=256
colorscheme koehler

" --- Shell Settings ---
noremap <C-d> :sh <cr>

" --- Package Manager Settings ---
execute pathogen#infect()
Helptags

" --- Update Package Command ---
command UpdatePkg execute "!zsh update"

" --- Airline Settings ---
set noshowmode
set laststatus=2

let g:airline_detect_paste = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline_powerline_fonts = 0
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" --- AG Search Settings ---
nnoremap \ :Ag<SPACE>
nnoremap F :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" --- Auto Completion Settings ---
let g:SuperTabDefaultCompletionType = '<C-n>'

" --- Control P Settings ---
nnoremap <tab><tab> :CtrlP<CR>

" --- Fugitive Settings ---
set diffopt+=vertical

" --- Final Syntax Settings ---
syntax on
highlight clear LineNr
highlight clear SignColumn
highlight NonText guifg=bg
filetype plugin indent on
