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
set hidden
set splitbelow

set shortmess=IFc

set mouse=a

nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

set autoindent
set smartindent

set cino=(0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set termwinsize=12x0

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

" --- Lightline Settings ---
set noshowmode
set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'base16_chalk',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'branch' ],
      \             [ 'relativepath' ] ],
      \   'right': [ [ 'clock'],
      \              [ 'numberinfo'],
      \              [ 'filetype' ] ]
      \ },
      \ 'component': {
      \   'clock': '%{strftime("%I:%M %p")}',
      \   'filetype': '%{&ft!=#""?&ft:""}',
      \   'numberinfo': '%4p%%  %l:%v ',
      \   'relativepath': '%<%{RelativePath()}'
      \ },
      \ 'component_function': {
      \   'branch': 'FugitiveHead',
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

" --- LSC Settings ---
let g:lsc_server_commands = {
      \ "dart": {
      \   "command": "dart " . $DART_SDK . "/snapshots/analysis_server.dart.snapshot --lsp --client-id vim --completion-model " . $DART_SDK . "/model/lexeme/",
      \   "message_hooks": {
      \     "initialize": {
      \       "initializationOptions": {
      \         "onlyAnalyzeProjectsWithOpenFiles": v:true
      \       }
      \     }
      \   },
      \   "log_level": -1,
      \   "suppress_stderr": v:true
      \ },
      \ "javascriptreact": {
      \   "command": "flow lsp",
      \   "message_hooks": {
      \     "initialize": {
      \       "initializationOptions": {
      \         "onlyAnalyzeProjectsWithOpenFiles": v:true
      \       }
      \     }
      \   },
      \   "log_level": -1,
      \   "suppress_stderr": v:true
      \ },
      \ "javascript": {
      \   "command": "flow lsp",
      \   "message_hooks": {
      \     "initialize": {
      \       "initializationOptions": {
      \         "onlyAnalyzeProjectsWithOpenFiles": v:true
      \       }
      \     }
      \   },
      \   "log_level": -1,
      \   "suppress_stderr": v:true
      \ },
      \ "go": {
      \   "command": "gopls serve",
      \   "message_hooks": {
      \     "initialize": {
      \       "initializationOptions": {
      \         "onlyAnalyzeProjectsWithOpenFiles": v:true
      \       }
      \     }
      \   },
      \   "log_level": -1,
      \   "suppress_stderr": v:true,
      \ },
      \ "python": {
      \   "command": "pyls",
      \   "message_hooks": {
      \     "initialize": {
      \       "initializationOptions": {
      \         "onlyAnalyzeProjectsWithOpenFiles": v:true,
      \       }
      \     }
      \   },
      \   "log_level": -1,
      \   "suppress_stderr": v:true,
      \ },
      \ "rust": {
      \   "command": "rls",
      \   "message_hooks": {
      \     "initialize": {
      \       "initializationOptions": {
      \         "onlyAnalyzeProjectsWithOpenFiles": v:true,
      \       }
      \     }
      \   },
      \   "log_level": -1,
      \   "suppress_stderr": v:true,
      \ },
      \ "swift": {
      \   "command": "xcrun sourcekit-lsp",
      \   "message_hooks": {
      \     "initialize": {
      \       "initializationOptions": {
      \         "onlyAnalyzeProjectsWithOpenFiles": v:true
      \       }
      \     }
      \   },
      \   "log_level": -1,
      \   "suppress_stderr": v:true
      \ },
      \ "typescript": {
      \   "command": "lsp-tsserver --stdio",
      \   "message_hooks": {
      \     "initialize": {
      \       "initializationOptions": {
      \         "onlyAnalyzeProjectsWithOpenFiles": v:true
      \       }
      \     }
      \   },
      \   "log_level": -1,
      \   "suppress_stderr": v:true
      \ },
      \ "typescriptreact": {
      \   "command": "lsp-tsserver --stdio",
      \   "message_hooks": {
      \     "initialize": {
      \       "initializationOptions": {
      \         "onlyAnalyzeProjectsWithOpenFiles": v:true
      \       }
      \     }
      \   },
      \   "log_level": -1,
      \   "suppress_stderr": v:true
      \ } }

let g:lsc_auto_map = v:true

let g:javascript_plugin_flow = 1

" --- MuComplete Settings ---
set completeopt+=menuone
set completeopt+=noselect

" inoremap <silent> <plug>(MUcompleteFwdKey) <right>
" imap <right> <plug>(MUcompleteCycFwd)
" inoremap <silent> <plug>(MUcompleteBwdKey) <left>
" imap <left> <plug>(MUcompleteCycBwd)

" --- Gutentag Settings ---
let g:gutentags_cache_dir = '~/.vim/pack/bundle/start/gutentags/.cache'

" --- Ag Settings ---
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
endif

" ---- FZF Settings ---
set rtp+=/usr/local/opt/fzf

let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

autocmd VimEnter * command! -bang -nargs=? Buffers call fzf#vim#buffers(<q-args>, {'options': '--no-preview'}, <bang>0)

nnoremap <tab><tab> :FZF --no-color <CR>
nnoremap <Leader><tab> :Buffers <CR>

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
nnoremap <silent> <Leader>l :Limelight!! <CR>

" --- CodeFmt Settings ---
nnoremap <silent> <C-f> :FormatCode <CR>

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
