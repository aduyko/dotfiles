set nocompatible
set hidden
set title

execute pathogen#infect()

syntax on

let iterm_profile = $ITERM_PROFILE
if iterm_profile == "Daytime"
  set background=light
  colorscheme gruvbox
else
  set background=dark
  colorscheme tomorrow-night
endif
"hi TabLineFill term=bold cterm=bold ctermbg=6
"hi StatusLine term=bold cterm=bold ctermbg=6

filetype on
filetype plugin on
filetype indent on

set number
set ruler
set history=1000
set scrolloff=5

set showtabline=2

set ignorecase
set smartcase

set hlsearch
set incsearch

set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

highlight ExtraWhitespaces cterm=underline
call matchadd('ExtraWhitespaces', '\s\+$')

"Remap for navigating splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Plugins
set runtimepath^=~/.vim/bundle/ctrlp.vim

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Set syntaxes
autocmd BufNewFile,BufRead *.j2 set syntax=yaml
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.groovy  setf groovy
autocmd BufNewFile,BufRead *Jenkinsfile*  setf groovy
autocmd BufNewFile,BufReadPost *.md set ft=markdown

"Custom log syntax
au BufNewFile,BufRead *.mylog set ft=mylog
autocmd BufEnter *.mylog set foldmethod=syntax

"markdown fold top
autocmd FileType markdown set foldexpr=NestedMarkdownFolds()
