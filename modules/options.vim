set encoding=utf-8                      " Character encoding
set clipboard=unnamedplus               " Enable system clipboard register
set go=a                                " Enable system selection register
set mouse=a                             " Enable mouse
set noerrorbells                        " Disable error bells
set smartindent                         " Enable 'smart' indentation
set nowrap                              " Don't wrap lines exceeding terminal width
set ignorecase                          " Case insensitive search...
set smartcase                           " unless caps are used
set colorcolumn=80                      " Highlight column 80
set splitbelow splitright               " Split windows below and to the right
set termguicolors                       " Enables 24-bit color. Required for Hexokinase
set incsearch                           " Show matching patterns incrementally
" set nohlsearch                          " Matched patterns don't stay highlighted
set expandtab                           " tab
set shiftwidth=4                        " ...
set softtabstop=4                       " ...
set tabstop=4                           " settings
set noswapfile                          " Disable swap files
set nobackup                            " Disable automatic backups
set undofile                            " Use files to store changes
set undodir=~/.local/share/nvim/undo    " Save all changes in the undodir
set laststatus=0                        " Hide the bar!
set cmdheight=1                         " Hide the bar!
set path+=**                            " Search for files recursively
set wildmenu                            " Enhanced command-line completion
set autochdir                           " Change vim's pwd to that of buffer
set formatoptions+=w                    " Prevents joining lines shorter than 80 characters
set tw=80                               " Set textwidth to 80 characters
filetype indent plugin on               " Filetype-specific plugins and indents
