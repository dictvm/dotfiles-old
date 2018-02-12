call plug#begin('~/.config/nvim/plugged')

Plug 'chase/vim-ansible-yaml'
Plug 'editorconfig/editorconfig-vim'
 Plug 'ctrlpvim/ctrlp.vim'
" Use this later, maybe?
" Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'stephpy/vim-yaml'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'edkolev/tmuxline.vim'
Plug 'edkolev/promptline.vim'
Plug 'ggreer/the_silver_searcher'
" Plug 'ervandew/supertab'
Plug 'DataWraith/auto_mkdir'
Plug 'vim-scripts/groovy.vim'

" Colorschemes
Plug 'tomasr/molokai'
Plug 'dracula/vim'
Plug 'nightsense/vimspectr'

call plug#end()

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" General
" Color scheme
set background=dark
let g:solarized_termcolors=256
let g:vimspectr210curve_dark_StatusLine = 'blue'
colorscheme dracula
set nocompatible                  " We don't care about vi
set hidden                        " Required for ctrlspace
syntax on                         " Enable syntax highlighting
set number                        " Show line numbers
" set linebreak                     " Break lines at word (requires Wrap lines)
" set showbreak=->                  " Wrap-broken line prefix
set textwidth=80                  " Line wrap (number of cols)
set showmatch                     " Highlight matching brace
set visualbell                    " Use visual bell (no beeping)

" Search
set hlsearch                      " Highlight all search results
set smartcase                     " Enable smart-case search
set ignorecase                    " Always case-insensitive
set incsearch                     " Searches for strings incrementally

" Format
set autoindent                    " Auto-indent new lines
set expandtab                     " Use spaces instead of tabs
set shiftwidth=2                  " Number of auto-indent spaces
set smartindent                   " Enable smart-indent
set smarttab                      " Enable smart-tabs
set softtabstop=2                 " Number of spaces per Tab
set tabstop=2
set shiftwidth=2
:highlight ExtraWhitespace ctermbg=darkblue guibg=darkblue


" Filetypes
filetype on                       " Enable filetype detection
filetype plugin on                " Enable filetype-specific plugins
filetype indent on                " Enable filetype-specific indenting

" Advanced
set ruler                         " Show row and column ruler information
set cmdheight=2                   " Command line height
" set backupdir=~/tmp             " Backup directories
set undolevels=1000               " Number of undo levels
set backspace=indent,eol,start    " Backspace behaviour
set undofile                      " Enable undo
set undodir=$HOME/.config/nvim/undo  " Undo store
