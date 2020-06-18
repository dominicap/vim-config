if has("gui_running")
    set guioptions=
    autocmd GUIEnter * set vb t_vb=

    set macmeta

    set guifont=Source\ Code\ Pro:h18 " SF\ Mono:h16
    set lines=36 columns=84

    nnoremap <tab><tab> :FZF <CR>

    set termguicolors
    colorscheme base16-chalk

    set wrap!

    set title
    set titlestring=%f\ —\ MacVim

    hi! link Visual CursorLine
end
