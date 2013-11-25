set backspace=2         " backspace in insert mode works like normal editor
syntax on               " syntax highlighting
filetype indent on      " activates indenting for files
set autoindent          " auto indenting
set number              " line numbers
set nobackup            " get rid of anoying ~file

" Indentation settings for using 3 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
"set shiftwidth=2
"set softtabstop=2
"set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" two characters wide.
set shiftwidth=2
set tabstop=2

set foldmethod=syntax
set foldnestmax=5
set foldlevelstart=20
