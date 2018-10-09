" Vim syntax file
" Language: Custom Markup
" Maintainer: Andriy Duyko
" Latest Revision: 21 December 2015

if exists("b:current_syntax")
  finish
endif

syn match mylogTimestamp '^\d\d\d\d'
syn match mylogTimestamp '^\~\~\~\~'

syn match mylogDivider '=\{10}'
syn match mylogTitle '\(^.*\w\+\)\n=\@='
syn match mylogDate '\[\d\+-\d\+-\d\+\]'

" syn region mylogTimeblock start="\[\d\+-\d\+-\d\+\]" end="\n\[" fold transparent
syn region mylogNoteblock start="=\{10}" end="[\r\n][\r\n]" fold transparent
syn region mylogIndentation start="^\s\s" end="^\( \)\@!" fold transparent

let b:current_syntax= "mylog"

hi def link mylogTimestamp Type
hi def link mylogTitle     Comment 
hi def link mylogDivider   Statement
hi def link mylogDate      Constant
hi TabLineFill ctermfg=Black ctermbg=Black
