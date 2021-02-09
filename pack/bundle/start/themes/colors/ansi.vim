highlight clear

if exists("syntax_on")
  syntax reset
endif


let colors_name = "ansi"

if &bg == "dark"
  highlight ColorColumn         ctermfg=darkgray       ctermbg=lightgray       cterm=BOLD
  highlight Conceal             ctermfg=lightgray      ctermbg=darkgray        cterm=BOLD
  highlight Cursor              ctermfg=lightgray      ctermbg=black           cterm=NONE
  highlight CursorColumn        ctermfg=lightgray      ctermbg=darkgray        cterm=NONE
  highlight CursorLine          ctermfg=lightgray      ctermbg=darkgray        cterm=NONE
  highlight Directory           ctermfg=lightgray      ctermbg=black           cterm=UNDERLINE
  highlight DiffAdd             ctermfg=lightgreen     ctermbg=black           cterm=NONE
  highlight DiffChange          ctermfg=lightyellow    ctermbg=black           cterm=NONE
  highlight DiffDelete          ctermfg=lightred       ctermbg=black           cterm=NONE
  highlight DiffText            ctermfg=lightblue      ctermbg=black           cterm=NONE
  highlight EndOfBuffer         ctermfg=lightgray      ctermbg=black           cterm=NONE
  highlight ErrorMsg            ctermfg=white          ctermbg=lightred        cterm=NONE
  highlight VertSplit           ctermfg=darkgray       ctermbg=lightgray       cterm=BOLD
  highlight Folded              ctermfg=darkgray       ctermbg=lightgray       cterm=BOLD
  highlight FoldColumn          ctermfg=lightgray      ctermbg=black           cterm=NONE
  highlight SignColumn          ctermfg=lightgray      ctermbg=black           cterm=NONE
  highlight IncSearch           ctermfg=NONE           ctermbg=NONE            cterm=INVERSE
  highlight LineNr              ctermfg=lightgray      ctermbg=black           cterm=NONE
  highlight LineNrAbove         ctermfg=lightgray      ctermbg=black           cterm=NONE
  highlight LineNrBelow         ctermfg=lightgray      ctermbg=black           cterm=NONE
  highlight CursorLineNr        ctermfg=lightgray      ctermbg=black           cterm=BOLD
  highlight MatchParen          ctermfg=lightgray      ctermbg=darkgray        cterm=NONE
  highlight MoreMsg             ctermfg=lightgreen     ctermbg=black           cterm=NONE
  highlight ModeMsg             ctermfg=lightgray      ctermbg=black           cterm=BOLD
  highlight NonText             ctermfg=lightgray      ctermbg=black           cterm=NONE
  highlight Normal              ctermfg=white          ctermbg=black           cterm=NONE
  highlight Pmenu               ctermfg=lightgray      ctermbg=darkgray        cterm=NONE
  highlight PmenuSel            ctermfg=darkgray       ctermbg=lightgray       cterm=NONE
  highlight PmenuSbar           ctermfg=lightgray      ctermbg=darkgray        cterm=NONE
  highlight PmenuThumb          ctermfg=darkgray       ctermbg=lightgray       cterm=NONE
  highlight Question            ctermfg=lightgray      ctermbg=black           cterm=BOLD
  highlight QuickFixLine        ctermfg=lightgray      ctermbg=darkgray        cterm=NONE
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
  highlight Visual              ctermfg=lightgray      ctermbg=darkgray        cterm=NONE
  highlight VisualNOS           ctermfg=lightgray      ctermbg=darkgray        cterm=UNDERLINE
  highlight WarningMsg          ctermfg=lightred       ctermbg=black           cterm=NONE
  highlight WildMenu            ctermfg=lightgray      ctermbg=darkgray        cterm=NONE

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
else
  highlight ColorColumn         ctermfg=lightgray       ctermbg=darkgray       cterm=BOLD
  highlight Conceal             ctermfg=darkgray        ctermbg=lightgray      cterm=BOLD
  highlight Cursor              ctermfg=darkgray        ctermbg=white          cterm=NONE
  highlight CursorColumn        ctermfg=darkgray        ctermbg=lightgray      cterm=NONE
  highlight CursorLine          ctermfg=darkgray        ctermbg=lightgray      cterm=NONE
  highlight Directory           ctermfg=darkgray        ctermbg=white          cterm=UNDERLINE
  highlight DiffAdd             ctermfg=darkgreen       ctermbg=white          cterm=NONE
  highlight DiffChange          ctermfg=darkyellow      ctermbg=white          cterm=NONE
  highlight DiffDelete          ctermfg=darkred         ctermbg=white          cterm=NONE
  highlight DiffText            ctermfg=darkblue        ctermbg=white          cterm=NONE
  highlight EndOfBuffer         ctermfg=darkgray        ctermbg=white          cterm=NONE
  highlight ErrorMsg            ctermfg=black           ctermbg=darkred        cterm=NONE
  highlight VertSplit           ctermfg=lightgray       ctermbg=darkgray       cterm=BOLD
  highlight Folded              ctermfg=lightgray       ctermbg=darkgray       cterm=BOLD
  highlight FoldColumn          ctermfg=darkgray        ctermbg=white          cterm=NONE
  highlight SignColumn          ctermfg=darkgray        ctermbg=white          cterm=NONE
  highlight IncSearch           ctermfg=NONE            ctermbg=NONE           cterm=INVERSE
  highlight LineNr              ctermfg=darkgray        ctermbg=white          cterm=NONE
  highlight LineNrAbove         ctermfg=darkgray        ctermbg=white          cterm=NONE
  highlight LineNrBelow         ctermfg=darkgray        ctermbg=white          cterm=NONE
  highlight CursorLineNr        ctermfg=darkgray        ctermbg=white          cterm=BOLD
  highlight MatchParen          ctermfg=darkgray        ctermbg=lightgray      cterm=NONE
  highlight MoreMsg             ctermfg=darkgreen       ctermbg=white          cterm=NONE
  highlight ModeMsg             ctermfg=darkgray        ctermbg=white          cterm=BOLD
  highlight NonText             ctermfg=darkgray        ctermbg=white          cterm=NONE
  highlight Normal              ctermfg=black           ctermbg=white          cterm=NONE
  highlight Pmenu               ctermfg=darkgray        ctermbg=lightgray      cterm=NONE
  highlight PmenuSel            ctermfg=lightgray       ctermbg=darkgray       cterm=NONE
  highlight PmenuSbar           ctermfg=darkgray        ctermbg=lightgray      cterm=NONE
  highlight PmenuThumb          ctermfg=lightgray       ctermbg=darkgray       cterm=NONE
  highlight Question            ctermfg=darkgray        ctermbg=white          cterm=BOLD
  highlight QuickFixLine        ctermfg=darkgray        ctermbg=lightgray      cterm=NONE
  highlight Search              ctermfg=NONE            ctermbg=NONE           cterm=INVERSE,UNDERLINE
  highlight SpecialKey          ctermfg=darkgray        ctermbg=white          cterm=BOLD
  highlight SpellBad            ctermfg=black           ctermbg=darkred        cterm=NONE
  highlight SpellCap            ctermfg=black           ctermbg=darkyellow     cterm=NONE
  highlight SpellRare           ctermfg=black           ctermbg=darkmagenta    cterm=NONE
  highlight SpellLocal          ctermfg=black           ctermbg=darkcyan       cterm=NONE
  highlight StatusLine          ctermfg=darkgray        ctermbg=white          cterm=NONE
  highlight StatusLineNC        ctermfg=lightgray       ctermbg=white          cterm=NONE
  highlight StatusLineTerm      ctermfg=darkgray        ctermbg=white          cterm=NONE
  highlight StatusLineTermNC    ctermfg=lightgray       ctermbg=white          cterm=NONE
  highlight TabLine             ctermfg=lightgray       ctermbg=white          cterm=NONE
  highlight TabLineFill         ctermfg=darkgray        ctermbg=white          cterm=NONE
  highlight TabLineSel          ctermfg=darkgray        ctermbg=white          cterm=NONE
  highlight Title               ctermfg=darkgray        ctermbg=white          cterm=BOLD
  highlight Visual              ctermfg=darkgray        ctermbg=lightgray      cterm=NONE
  highlight VisualNOS           ctermfg=darkgray        ctermbg=lightgray      cterm=UNDERLINE
  highlight WarningMsg          ctermfg=darkred         ctermbg=white          cterm=NONE
  highlight WildMenu            ctermfg=darkgray        ctermbg=lightgray      cterm=NONE

  highlight Comment             ctermfg=lightgray       ctermbg=white          cterm=NONE
  highlight Constant            ctermfg=lightred        ctermbg=white          cterm=NONE
  highlight Special             ctermfg=lightmagenta    ctermbg=white          cterm=NONE
  highlight Identifier          ctermfg=lightblue       ctermbg=white          cterm=NONE
  highlight Statement           ctermfg=lightyellow     ctermbg=white          cterm=NONE
  highlight PreProc             ctermfg=lightcyan       ctermbg=white          cterm=NONE
  highlight Type                ctermfg=lightgreen      ctermbg=white          cterm=NONE
  highlight Underlined          ctermfg=darkgray        ctermbg=white          cterm=UNDERLINE
  highlight Ignore              ctermfg=lightgray       ctermbg=white          cterm=NONE
  highlight Error               ctermfg=black           ctermbg=lightred       cterm=NONE
  highlight Todo                ctermfg=black           ctermbg=lightyellow    cterm=NONE
end
