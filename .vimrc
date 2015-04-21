set nocompatible              " be iMproved, required
filetype off                  " required

" run :PluginInstall to install plugin via Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"https://github.com/gmarik/Vundle.vim
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-rvm'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'ctrlp.vim'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set nu
set cc=80
"color ir_black
color biogoo
"color vividchalk
"color inkpot
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set guioptions-=T
set guioptions-=m
winpos 300 100
set columns=90 lines=50
set ff=unix
set hidden " auto save when file change

"highlight search results
set hlsearch

" set working dir to the current file
set autochdir

" load rvm env
"set statusline+=%{rvm#statusline()} 

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
" if Linux
set guifont=DejaVu\ Sans\ Mono\ 12
" if MacOSX
"set guifont=Monaco:h14
" if Windows
"set guifont=DejaVu_Sans_Mono:h12

" let NERDTree load CWD automaticly
let g:NERDTreeChDirMode=2
let g:NERDTreeQuitOnOpen=2
let g:NERDTreeDirArrows=0

" key binding
map <D-2> :NERDTree<CR>
map <D-5> :!ruby -w %<CR>
map <leader>r :e $HOME/.vimrc<CR>
map <M-Space> <Plug>VimwikiToggleListItem
map <D-9> :bp<CR>
map	<D-0> :bn<CR>

" ctrlP config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
