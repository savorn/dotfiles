"GVim settings
set guioptions -=T " disable toolbar
set guifont=Consolas:h10 " set font

" color scheme
set background=light " set background
colorscheme solarized " colorscheme

" options
set nocompatible " reset options when re-source .vimrc
filetype indent plugin on " auto-indent for each filetype
syntax on " turn syntax on
set number " turn line numbers on
set laststatus=2 " show statusline
set backspace=indent,eol,start " allow backspacing
set hidden " allow re-use of same windows
set wildmenu " command-line completion
set showcmd " show partial command
set ignorecase " case insensitive search
set smartcase " use case insensitive search unless capital letters
set ruler " show cursor position
set confirm " raise dialogue asking to save changed file

" indentation settings
set shiftwidth=4
set softtabstop=4
set expandtab

" disable beeping
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
