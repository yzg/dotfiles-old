
set nocompatible

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc'
NeoBundle 'jdonaldson/vaxe'

filetype plugin indent on

NeoBundleCheck

syntax on

set nobackup
set noswapfile

set number

set list listchars=tab:>-,eol:<,nbsp:%

set filetype=markdown
set encoding=utf-8
set fileformat=unix
set fileencodings=utf-8,cp932,euc-jp
set fileformats=unix,dos

set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
"set statusline=%<%f\ [%{&ff}][%{&fileencoding}]%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P

set expandtab shiftwidth=4 softtabstop=4
autocmd Filetype javascript,html set shiftwidth=2 softtabstop=2 
autocmd Filetype haxe set noexpandtab shiftwidth=2 tabstop=2 

let $MYVIMRC = "C:/Users/yzg/Dropbox/dotfiles/.vimrc"
let $MYGVIMRC = "C:/Users/yzg/Dropbox/dotfiles/.gvimrc"

