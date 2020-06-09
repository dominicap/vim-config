if has("gui_running")
    set guioptions=
    autocmd GUIEnter * set vb t_vb=

    set guifont=Courier:h20 " SF\ Mono:h16
    set lines=36 columns=84

    nnoremap <tab><tab> :FZF <CR>

    set termguicolors
    colorscheme base16-atelier-lakeside

    set wrap!

    set title
    set titlestring=%f\ —\ MacVim
end
