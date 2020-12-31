if has("gui_running")
    set guioptions=
    autocmd GUIEnter * set vb t_vb=

    set macmeta

    set guifont=SF\ Mono:h22
    set lines=36 columns=84

    nnoremap <tab><tab> :FZF <CR>

    set termguicolors
    colorscheme base16-atelier-cave

    set wrap!

    set title
    set titlestring=%f\ —\ MacVim

    hi! link Visual CursorLine
end
