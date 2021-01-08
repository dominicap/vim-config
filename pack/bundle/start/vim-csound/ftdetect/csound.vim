" Vim syntax files for Csound
" Maintainer:   Istvan Varga
" Last change:  Mar 2 2006

augroup	filetypedetect
  au	BufNewFile,BufRead	*.orc	setlocal filetype=csound-orc
  au	BufNewFile,BufRead	*.ORC	setlocal filetype=csound-orc
  au	BufNewFile,BufRead	*.sco	setlocal filetype=csound-sco
  au	BufNewFile,BufRead	*.SCO	setlocal filetype=csound-sco
  au	BufNewFile,BufRead	*.csd	setlocal filetype=csound-csd
  au	BufNewFile,BufRead	*.CSD	setlocal filetype=csound-csd
augroup	END

