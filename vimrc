scriptencoding utf-8
set encoding=utf-8

set nocompatible
filetype off

set shortmess=I
let loaded_netrwPlugin = 1

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
set smartindent

set cino=(0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set termwinsize=12x0

imap <C-BS> <C-W>

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
nmap <silent> <leader>w :set list!<CR>

set listchars=tab:▸\ ,eol:¬,trail:⋅,space:⋅,extends:❯,precedes:❮
set showbreak=↪

autocmd BufWritePre * %s/\s\+$//e

" --- Airline Settings ---
set noshowmode
set laststatus=2

let g:lightline = {
            \ 'colorscheme': 'base16_atelier_lakeside',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'branch' ],
            \             [ 'relativepath' ] ],
            \   'right': [ [ 'clock'],
            \              [ 'info'],
            \              [ 'filetype' ] ]
            \ },
            \ 'component': {
            \   'clock': '%{strftime("%I:%M %p")}',
            \   'info': '%4p%% %2l:%-2v'
            \ },
            \ 'component_type': {
            \   'info': 'raw'
            \ },
            \ 'component_function': {
            \   'branch': 'FugitiveHead'
            \ },
            \ 'subseparator': { 'left': '', 'right': '' }
            \ }

" --- MuComplete Settings ---
set completeopt+=menuone
set completeopt+=noselect

set shortmess+=c

" --- Ag Settings ---
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
endif

" ---- FZF Settings ---
set rtp+=/usr/local/opt/fzf

autocmd VimEnter * command! -bang -nargs=? Buffers call fzf#vim#buffers(<q-args>, {'options': '--no-preview'}, <bang>0)

nnoremap <tab><tab> :FZF --no-color <CR>
nnoremap <S> :Buffers <CR>

nnoremap \ :Ag<Space>
nnoremap <C-\> :BLines<Space>

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

" --- Limelight Settings ---
nnoremap <silent> <C-l> :Limelight!! <CR>

" --- CodeFmt Settings ---
nnoremap <silent> <C-f> :FormatCode <CR>

" --- Fugitive Settings ---
set diffopt+=vertical

" --- Commentary Settings ---
nmap <C-@> <Plug>CommentaryLine

nmap <C-_> <Plug>Commentary
xmap <C-_> <Plug>Commentary
omap <C-_> <Plug>Commentary

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
