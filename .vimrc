syntax on

set number

set fileformat=unix
if !(!has('gui') && (has('win32') || has('win64')))
  set encoding=utf-8
endif

set laststatus=2
set statusline=%<%f\ [%{&ff}][%{&fileencoding}]%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P

set list
set listchars=tab:>-,eol:<,nbsp:%

set backup backupdir=~/tmp,~/

set expandtab shiftwidth=2 tabstop=2
autocmd Filetype php set noexpandtab shiftwidth=4 tabstop=4

set autoindent

set mouse=a
set clipboard=unnamed

set hidden

" color scheme
set background=dark

" qfixapp
set runtimepath+=l:\.vim\qfixapp

