set nocompatible

" --- General Settings ---
set backspace=indent,eol,start

set path-=/usr/include
set autoread

set ruler
set number
set relativenumber

set showcmd

set incsearch

set ignorecase
set smartcase

set hidden
set splitbelow

set wildmenu
set wildmode=full
set wildignorecase

set shortmess=IFc

set mouse=a
set nowrap

nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

set termwinsize=12x0
autocmd FileType qf 12wincmd_

let loaded_netrwPlugin = 1

" --- I-Beam Settings ---
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

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
set showbreak=↪

autocmd BufWritePre * %s/\s\+$//e

" --- QuickFix Settings ---
let g:qf_max_height = 12

" --- Lightline Settings ---
set noshowmode
set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'default',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'relativepath' ] ],
      \   'right': [ [ 'numberinfo'],
      \              [ 'filetype' ] ]
      \ },
      \ 'component': {
      \   'clock': '%{strftime("%I:%M %p")}',
      \   'filetype': '%{&ft!=#""?&ft:""}',
      \   'numberinfo': '%4p%%  %l:%v ',
      \   'relativepath': '%<%{RelativePath()}'
      \ },
      \ 'component_function': {
      \   'numberinfo': 'NumberInfo'
      \ },
      \ 'component_type': {
      \   'numberinfo': 'raw'
      \ },
      \ 'subseparator': { 'left': '', 'right': '' } }

function! NumberInfo()
  if lightline#mode() ==# "TERMINAL"
    return ""
  else
    return printf(" %d%%  %d:%d ", (100 * line(".") / line("$")), line('.'), col('.'))
  endif
endfunction

function! RelativePath() abort
  return expand('%:p') !=# '' ? expand('%:p') : ''
endfunction

autocmd VimEnter * call SetupLightlineColors()
function SetupLightlineColors() abort
  let l:palette = lightline#palette()

  let l:palette.normal.left = [ [ 'NONE', 'NONE', 'NONE', 'NONE', 'bold' ] ]
  let l:palette.normal.right = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
  let l:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]

  let l:palette.insert.left = [ [ 'NONE', 'NONE', 'NONE', 'NONE', 'bold' ] ]
  let l:palette.insert.right = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
  let l:palette.insert.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]

  let l:palette.visual.left = [ [ 'NONE', 'NONE', 'NONE', 'NONE', 'bold' ] ]
  let l:palette.visual.right = [ [ 'NONE', 'NONE', 'NONE', 'NONE'  ] ]
  let l:palette.visual.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]

  let l:palette.inactive.left = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
  let l:palette.inactive.right = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
  let l:palette.inactive.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]

  call lightline#colorscheme()
endfunction

" --- Grep Settings ---
if executable('rg')
  set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
endif

" --- Syntax & Color Settings ---
filetype plugin indent on

syntax on
colorscheme peachpuff

highlight Visual term=None cterm=None
highlight StatusLine term=None cterm=None
highlight QuickFixLine term=bold cterm=bold

highlight WildMenu ctermbg=None ctermfg=None
highlight WildMenu term=bold cterm=bold

highlight PMenu ctermbg=7 ctermfg=0
highlight PMenuSel ctermbg=7 cterm=bold
highlight PMenuSbar ctermbg=None ctermfg=None
highlight PMenuThumb ctermbg=None ctermfg=None
