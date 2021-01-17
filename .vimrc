" color scheme
packadd! dracula
syntax enable
set background=dark " set background
let g:dracula_italic = 1
let g:dracula_bold = 1
colorscheme dracula " colorscheme

" options
set nocompatible " reset options when re-source .vimrc
filetype indent plugin on " auto-indent for each filetype
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
