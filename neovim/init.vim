set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Scripts

" Colorscheme
Plugin 'morhetz/gruvbox'

call vundle#end()

syntax enable
set autoindent
filetype plugin indent on
set hidden
set showcmd
set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set number
set cursorline
set background=dark

set tabstop=4
set softtabstop=4

let g:gruvbox_contrast_dark = 'soft'
colorscheme gruvbox
