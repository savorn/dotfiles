" Savorn's .vimrc

" pathogen install plugins and runtime files in ~/.vim/bundle
execute pathogen#infect()

set nocompatible " ward off unexpected things from distro
filetype indent plugin on " allow intelligent auto-indenting for each filetype
syntax on " enable syntax highlighting

set hidden " allow re-use the same window and switch from unsaved buffer
set showcmd " show partial commands
set hlsearch " enable highlight searches
set ignorecase " ignore case sensitive search
set smartcase " use case insensitive search, except when using capital letters
set backspace=indent,eol,start " allow backspacing over autoindent, line breaks and start of insert action
set autoindent " keep the same indent
set ruler " display cursor position
set mouse=a " enable use of the mouse
set number " display line numbers on the left

" indentation options
set shiftwidth=4
set softtabstop=4
set expandtab

" use base16 shell colorscheme
if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    source ~/.vimrc_background
endif
