
set nocompatible

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc', {
    \ 'build': {
    \   'windows' : 'make -f make_mingw64.mak',
    \   'cygwin' : 'make -f make_cygwin.mak',
    \   },
    \ }

NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'jdonaldson/vaxe'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Lokaltog/powerline'
NeoBundle 'tomasr/molokai'
NeoBundle 'kongo2002/fsharp-vim'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'DrawIt'

filetype plugin indent on

NeoBundleCheck

set runtimepath+=~/.vim/qfixapp

if has('lua')
  let g:neocomplete#enable_at_startup = 1
endif

syntax on

set nobackup
set noswapfile

set number

set list listchars=tab:>-,eol:<,nbsp:%
set wildmenu
set formatoptions-=t
set textwidth=80 colorcolumn=+1
set cursorline
set cursorcolumn
set hidden
set virtualedit+=block

set filetype=markdown
set encoding=utf-8
set fileformat=unix
set fileencodings=utf-8,cp932,euc-jp
set fileformats=unix,dos

set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
"set statusline=%<%f\ [%{&ff}][%{&fileencoding}]%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P

set expandtab shiftwidth=4 softtabstop=4
autocmd Filetype coffee,ruby,fsharp,haskell,yaml set shiftwidth=2 softtabstop=2 
autocmd Filetype cpp,haxe,javascript,html,php set noexpandtab shiftwidth=2 softtabstop=2 tabstop=2 

let $MYVIMRC = "C:/Users/yzg/Dropbox/dotfiles/.vimrc"
let $MYGVIMRC = "C:/Users/yzg/Dropbox/dotfiles/.gvimrc"

source ~/.vim_profile

