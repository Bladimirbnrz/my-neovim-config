let g:polyglot_disabled =[]
let g:python_highlight_space_errors = 0

call plug#begin('~/.config/nvim/plugged')

" syntax
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'norcalli/nvim-colorizer.lua'
Plug 'awvwgk/fortran.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"Plug 'HiPhish/nvim-ts-rainbow2'
Plug 'HiPhish/rainbow-delimiters.nvim'
Plug 'nvim-treesitter/nvim-treesitter-refactor'
Plug 'RRethy/nvim-treesitter-textsubjects'

" status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'AlessandroYorba/Sierra'
Plug 'arcticicestudio/nord-vim'
Plug 'folke/tokyonight.nvim'
Plug 'EdenEast/nightfox.nvim' 

" Tree
"Plug 'scrooloose/nerdtree'  "only for vim
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'

" typing
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

" autocomplete
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lervag/vimtex'

" test
Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'

" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'

" git
Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-repeat'

"Avante nvim
"Plug 'yetone/avante.nvim'
"Plug 'stevearc/dressing.nvim'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'MunifTanjim/nui.nvim'
"Plug 'MeanderingProgrammer/render-markdown.nvim'

"Plug 'stevearc/dressing.nvim'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'MunifTanjim/nui.nvim'
"Plug 'MeanderingProgrammer/render-markdown.nvim'

call plug#end()
