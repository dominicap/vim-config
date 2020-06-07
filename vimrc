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
set splitbelow

set autoindent

autocmd Filetype go setlocal tabstop=8 shiftwidth=8 softtabstop=8

autocmd Filetype swift setlocal tabstop=4 shiftwidth=4 softtabstop=4

autocmd Filetype ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype julia setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype coffee setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType vue setlocal tabstop=2 shiftwidth=2 softtabstop=2

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set termwinsize=12x0

let loaded_netrwPlugin = 1

nnoremap <silent> <C-l> :nohl<CR><C-l>

" --- Format Settings ---
map <C-I> :py3f ~/.vim/bundle/vim-swift/swift-format.py<cr>

autocmd FileType json autocmd BufWritePre <buffer> %!python -m json.tool

set cino=(0

" --- I-Beam Settings ---
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

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

" --- Shell Settings ---
noremap <C-d> :sh <cr>

" --- Package Manager Settings ---
execute pathogen#infect()
Helptags

" --- Update Package Command ---
command UpdatePkg execute "!cd ~/.vim && ./update"

" --- Airline Settings ---
set noshowmode
set laststatus=2

let g:airline_theme = "monochrome"

let g:airline_detect_paste = 1
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline_powerline_fonts = 0

let g:airline_left_sep = ''
let g:airline_right_sep = ''

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''

let g:airline_symbols.branch = ''

let s:saved_theme = []

let g:airline_theme_patch_func = 'AirlineThemePatch'
function! AirlineThemePatch(palette)
    for colors in values(a:palette)
        if has_key(colors, 'airline_c') && len(s:saved_theme) ==# 0
            let s:saved_theme = colors.airline_c
        endif
        if has_key(colors, 'airline_term')
            let colors.airline_term = s:saved_theme
        endif
    endfor
endfunction

" --- Ack Search Settings ---
nnoremap \ :Ack<SPACE>
nnoremap F :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ackprg = 'ag --vimgrep'
endif

" --- Auto Completion Settings ---
let g:SuperTabDefaultCompletionType = '<C-n>'

" ---- FZF Settings ---
set rtp+=/usr/local/opt/fzf

nnoremap <tab><tab> :FZF --no-color <CR>
nnoremap <C-tab> :Buffers <CR>

let g:fzf_colors =
            \ { 'fg':    ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'String'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'Normal'],
            \ 'info':    ['fg', 'Keyword'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Statement'],
            \ 'pointer': ['fg', 'Statement'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'gutter':  ['bg', 'Normal'],
            \ 'header':  ['fg', 'Comment'] }

autocmd! FileType fzf set laststatus=0 noruler
            \| autocmd BufLeave <buffer> set laststatus=2 ruler

" --- Fugitive Settings ---
set diffopt+=vertical

" --- Emmet Settings ---
let g:user_emmet_leader_key=','

" --- Syntax & Color Settings ---
filetype plugin indent on

syntax off
set nohlsearch
set t_Co=0

let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

highlight LineNr None
highlight CursorLineNr None

autocmd ColorScheme *
            \ highlight clear LineNr
            \ highlight clear SignColumn

highlight NonText guifg=bg

highlight MatchParen ctermfg=None term=underline cterm=underline gui=underline
highlight Normal ctermbg=None
