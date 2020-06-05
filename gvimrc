if has("gui_running")
    set guioptions=
    autocmd GUIEnter * set vb t_vb=

    set guifont=Courier:h20
    set lines=36 columns=84

    let g:airline_theme = "base16"

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

    nnoremap <tab><tab> :FZF <CR>

    set termguicolors
    colorscheme base16-atelier-lakeside

    set wrap!

    set title
    set titlestring=%f\ —\ MacVim
end
