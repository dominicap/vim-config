highlight clear

if exists("syntax_on")
  syntax reset
endif


let colors_name = "ansi"

if &bg == "dark"
  highlight ColorColumn         ctermfg=lightgray      ctermbg=darkgray        cterm=NONE
  highlight Conceal             ctermfg=lightgray      ctermbg=darkgray        cterm=NONE
  highlight Cursor              ctermfg=lightgray      ctermbg=black           cterm=NONE
  highlight CursorColumn        ctermfg=NONE           ctermbg=NONE            cterm=INVERSE
  highlight CursorLine          ctermfg=NONE           ctermbg=NONE            cterm=INVERSE
  highlight Directory           ctermfg=lightgray      ctermbg=black           cterm=UNDERLINE
  highlight DiffAdd             ctermfg=black          ctermbg=lightgreen      cterm=NONE
  highlight DiffChange          ctermfg=black          ctermbg=lightyellow     cterm=NONE
  highlight DiffDelete          ctermfg=black          ctermbg=lightred        cterm=NONE
  highlight DiffText            ctermfg=black          ctermbg=lightblue       cterm=NONE
  highlight EndOfBuffer         ctermfg=lightgray      ctermbg=black           cterm=NONE
  highlight ErrorMsg            ctermfg=white          ctermbg=lightred        cterm=NONE
  highlight VertSplit           ctermfg=lightgray      ctermbg=black           cterm=NONE
  highlight Folded              ctermfg=lightgray      ctermbg=darkgray        cterm=NONE
  highlight FoldColumn          ctermfg=lightgray      ctermbg=black           cterm=NONE
  highlight SignColumn          ctermfg=lightgray      ctermbg=black           cterm=NONE
  highlight IncSearch           ctermfg=NONE           ctermbg=NONE            cterm=INVERSE
  highlight LineNr              ctermfg=lightgray      ctermbg=black           cterm=NONE
  highlight LineNrAbove         ctermfg=lightgray      ctermbg=black           cterm=NONE
  highlight LineNrBelow         ctermfg=lightgray      ctermbg=black           cterm=NONE
  highlight CursorLineNr        ctermfg=NONE           ctermbg=NONE            cterm=INVERSE
  highlight MatchParen          ctermfg=NONE           ctermbg=NONE            cterm=INVERSE
  highlight MoreMsg             ctermfg=lightgreen     ctermbg=black           cterm=NONE
  highlight ModeMsg             ctermfg=lightgray      ctermbg=black           cterm=BOLD
  highlight NonText             ctermfg=lightgray      ctermbg=black           cterm=NONE
  highlight Normal              ctermfg=white          ctermbg=black           cterm=NONE
  highlight Pmenu               ctermfg=lightgray      ctermbg=darkgray        cterm=NONE
  highlight PmenuSel            ctermfg=lightgray      ctermbg=darkgray        cterm=INVERSE
  highlight PmenuSbar           ctermfg=lightgray      ctermbg=darkgray        cterm=NONE
  highlight PmenuThumb          ctermfg=darkgray       ctermbg=lightgray       cterm=NONE
  highlight Question            ctermfg=lightgray      ctermbg=black           cterm=BOLD
  highlight QuickFixLine        ctermfg=NONE           ctermbg=NONE            cterm=INVERSE
  highlight Search              ctermfg=NONE           ctermbg=NONE            cterm=INVERSE,UNDERLINE
  highlight SpecialKey          ctermfg=lightgray      ctermbg=black           cterm=BOLD
  highlight SpellBad            ctermfg=white          ctermbg=lightred        cterm=NONE
  highlight SpellCap            ctermfg=white          ctermbg=lightyellow     cterm=NONE
  highlight SpellRare           ctermfg=white          ctermbg=lightmagenta    cterm=NONE
  highlight SpellLocal          ctermfg=white          ctermbg=lightcyan       cterm=NONE
  highlight StatusLine          ctermfg=lightgray      ctermbg=black           cterm=NONE
  highlight StatusLineNC        ctermfg=darkgray       ctermbg=black           cterm=NONE
  highlight StatusLineTerm      ctermfg=lightgray      ctermbg=black           cterm=NONE
  highlight StatusLineTermNC    ctermfg=darkgray       ctermbg=black           cterm=NONE
  highlight TabLine             ctermfg=darkgray       ctermbg=black           cterm=NONE
  highlight TabLineFill         ctermfg=lightgray      ctermbg=black           cterm=NONE
  highlight TabLineSel          ctermfg=lightgray      ctermbg=black           cterm=NONE
  highlight Title               ctermfg=lightgray      ctermbg=black           cterm=BOLD
  highlight Visual              ctermfg=NONE           ctermbg=NONE            cterm=INVERSE
  highlight VisualNOS           ctermfg=NONE           ctermbg=NONE            cterm=INVERSE,UNDERLINE
  highlight WarningMsg          ctermfg=lightred       ctermbg=black           cterm=NONE
  highlight WildMenu            ctermfg=lightgray      ctermbg=black           cterm=INVERSE

  highlight Comment             ctermfg=darkgray       ctermbg=black           cterm=NONE
  highlight Constant            ctermfg=darkred        ctermbg=black           cterm=NONE
  highlight Special             ctermfg=darkmagenta    ctermbg=black           cterm=NONE
  highlight Identifier          ctermfg=darkblue       ctermbg=black           cterm=NONE
  highlight Statement           ctermfg=darkyellow     ctermbg=black           cterm=NONE
  highlight PreProc             ctermfg=darkcyan       ctermbg=black           cterm=NONE
  highlight Type                ctermfg=darkgreen      ctermbg=black           cterm=NONE
  highlight Underlined          ctermfg=lightgray      ctermbg=black           cterm=UNDERLINE
  highlight Ignore              ctermfg=darkgray       ctermbg=black           cterm=NONE
  highlight Error               ctermfg=white          ctermbg=darkred         cterm=NONE
  highlight Todo                ctermfg=white          ctermbg=darkyellow      cterm=NONE
elseif &bg == "light"
  highlight ColorColumn         ctermfg=darkgray       ctermbg=lightgray       cterm=NONE
  highlight Conceal             ctermfg=darkgray       ctermbg=lightgray       cterm=NONE
  highlight Cursor              ctermfg=darkgray       ctermbg=white           cterm=NONE
  highlight CursorColumn        ctermfg=NONE           ctermbg=NONE            cterm=INVERSE
  highlight CursorLine          ctermfg=NONE           ctermbg=NONE            cterm=INVERSE
  highlight Directory           ctermfg=darkgray       ctermbg=white           cterm=UNDERLINE
  highlight DiffAdd             ctermfg=white          ctermbg=lightgreen      cterm=NONE
  highlight DiffChange          ctermfg=white          ctermbg=lightyellow     cterm=NONE
  highlight DiffDelete          ctermfg=white          ctermbg=lightred        cterm=NONE
  highlight DiffText            ctermfg=white          ctermbg=lightblue       cterm=NONE
  highlight EndOfBuffer         ctermfg=darkgray       ctermbg=white           cterm=NONE
  highlight ErrorMsg            ctermfg=black          ctermbg=lightred        cterm=NONE
  highlight VertSplit           ctermfg=darkgray       ctermbg=white           cterm=NONE
  highlight Folded              ctermfg=darkgray       ctermbg=lightgray       cterm=NONE
  highlight FoldColumn          ctermfg=darkgray       ctermbg=white           cterm=NONE
  highlight SignColumn          ctermfg=darkgray       ctermbg=white           cterm=NONE
  highlight IncSearch           ctermfg=NONE           ctermbg=NONE            cterm=INVERSE
  highlight LineNr              ctermfg=darkgray       ctermbg=white           cterm=NONE
  highlight LineNrAbove         ctermfg=darkgray       ctermbg=white           cterm=NONE
  highlight LineNrBelow         ctermfg=darkgray       ctermbg=white           cterm=NONE
  highlight CursorLineNr        ctermfg=NONE           ctermbg=NONE            cterm=INVERSE
  highlight MatchParen          ctermfg=NONE           ctermbg=NONE            cterm=INVERSE
  highlight MoreMsg             ctermfg=lightgreen     ctermbg=white           cterm=NONE
  highlight ModeMsg             ctermfg=darkgray       ctermbg=white           cterm=BOLD
  highlight NonText             ctermfg=darkgray       ctermbg=white           cterm=NONE
  highlight Normal              ctermfg=black          ctermbg=white           cterm=NONE
  highlight Pmenu               ctermfg=darkgray       ctermbg=lightgray       cterm=NONE
  highlight PmenuSel            ctermfg=darkgray       ctermbg=lightgray       cterm=INVERSE
  highlight PmenuSbar           ctermfg=darkgray       ctermbg=lightgray       cterm=NONE
  highlight PmenuThumb          ctermfg=lightgray      ctermbg=darkgray        cterm=NONE
  highlight Question            ctermfg=darkgray       ctermbg=white           cterm=BOLD
  highlight QuickFixLine        ctermfg=NONE           ctermbg=NONE            cterm=INVERSE
  highlight Search              ctermfg=NONE           ctermbg=NONE            cterm=INVERSE,UNDERLINE
  highlight SpecialKey          ctermfg=darkgray       ctermbg=white           cterm=BOLD
  highlight SpellBad            ctermfg=black          ctermbg=lightred        cterm=NONE
  highlight SpellCap            ctermfg=black          ctermbg=lightyellow     cterm=NONE
  highlight SpellRare           ctermfg=black          ctermbg=lightmagenta    cterm=NONE
  highlight SpellLocal          ctermfg=black          ctermbg=lightcyan       cterm=NONE
  highlight StatusLine          ctermfg=darkgray       ctermbg=white           cterm=NONE
  highlight StatusLineNC        ctermfg=lightgray      ctermbg=white           cterm=NONE
  highlight StatusLineTerm      ctermfg=darkgray       ctermbg=white           cterm=NONE
  highlight StatusLineTermNC    ctermfg=lightgray      ctermbg=white           cterm=NONE
  highlight TabLine             ctermfg=lightgray      ctermbg=white           cterm=NONE
  highlight TabLineFill         ctermfg=darkgray       ctermbg=white           cterm=NONE
  highlight TabLineSel          ctermfg=darkgray       ctermbg=white           cterm=NONE
  highlight Title               ctermfg=darkgray       ctermbg=white           cterm=BOLD
  highlight Visual              ctermfg=NONE           ctermbg=NONE            cterm=INVERSE
  highlight VisualNOS           ctermfg=NONE           ctermbg=NONE            cterm=INVERSE,UNDERLINE
  highlight WarningMsg          ctermfg=lightred       ctermbg=white           cterm=NONE
  highlight WildMenu            ctermfg=darkgray       ctermbg=white           cterm=INVERSE

  highlight Comment             ctermfg=lightgray      ctermbg=white           cterm=NONE
  highlight Constant            ctermfg=darkred        ctermbg=white           cterm=NONE
  highlight Special             ctermfg=darkmagenta    ctermbg=white           cterm=NONE
  highlight Identifier          ctermfg=darkblue       ctermbg=white           cterm=NONE
  highlight Statement           ctermfg=darkyellow     ctermbg=white           cterm=NONE
  highlight PreProc             ctermfg=darkcyan       ctermbg=white           cterm=NONE
  highlight Type                ctermfg=darkgreen      ctermbg=white           cterm=NONE
  highlight Underlined          ctermfg=darkgray       ctermbg=white           cterm=UNDERLINE
  highlight Ignore              ctermfg=lightgray      ctermbg=white           cterm=NONE
  highlight Error               ctermfg=black          ctermbg=darkred         cterm=NONE
  highlight Todo                ctermfg=black          ctermbg=darkyellow      cterm=NONE
end
