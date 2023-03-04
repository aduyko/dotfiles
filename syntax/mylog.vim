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
syn match mylogDate '\[.*]'

syn match mylogBullet '[-x!\?]'
syn match mylogBullet '\s\+[-x!]'
syn match mylogHeader '###.*'

" syn region mylogTimeblock start="\[\d\+-\d\+-\d\+\]" end="\n\[" fold transparent
syn region mylogNoteblock start="=\{10}" end="[\r\n][\r\n]" fold transparent
syn region mylogIndentation start="^\s\s" end="^\( \)\@!" fold transparent

let b:current_syntax= "mylog"

hi def link mylogTimestamp Type
hi def link mylogTitle     Comment
hi def link mylogDivider   Identifier
hi def link mylogDate      Constant
hi def link mylogHeader    Identifier
hi def link mylogBullet    Type
hi TabLineFill ctermfg=Black ctermbg=Black
