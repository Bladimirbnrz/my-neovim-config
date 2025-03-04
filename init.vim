"cargar carpetas"
so ~/.config/nvim/plugins.vim
"so ~/.config/nvim/plugin-config.vim
so ~/.config/nvim/maps.vim
so ~/.config/nvim/tree.lua
so ~/.config/nvim/coc.vim
so ~/.config/nvim/treesitter.lua
so ~/.config/nvim/ultisnip.vim
so ~/.config/nvim/rainbow.lua

"themes
"so ~/.config/nvim/themes/tokyo.vim
"so ~/.config/nvim/themes/nord.vim
"so ~/.config/nvim/themes/gruvbox.vim
so ~/.config/nvim/themes/fox.lua
"so ~/.config/nvim/themes/sierra.vim

filetype plugin on
filetype on
filetype indent on
syntax enable
set nocompatible
set number
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
"set background=dark
set laststatus=2
set noshowmode
set termguicolors

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"highlight Normal ctermbg=none guibg=none
"highlight NonText ctermbg=none guibg=none

au BufRead,BufNewFile *.tex set filetype=tex
"au BufNewFile,BufRead *.html set filetype=htmldjango
lua require'colorizer'.setup()

