call plug#begin('~/.config/nvim/plugged')

Plug 'chase/vim-ansible-yaml'
Plug 'editorconfig/editorconfig-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'stephpy/vim-yaml'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'monochromegane/the_platinum_searcher'
Plug 'vim-airline/vim-airline'
Plug 'edkolev/tmuxline.vim'
Plug 'DataWraith/auto_mkdir'
Plug 'vim-scripts/groovy.vim'
Plug 'roxma/vim-tmux-clipboard'
Plug 'tpope/vim-obsession'
Plug 'scrooloose/syntastic'
Plug 'ngmy/vim-rubocop'
Plug 'jiangmiao/auto-pairs'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-fugitive'
Plug 'hashivim/vim-terraform'

" Colorschemes
Plug 'tomasr/molokai'
Plug 'dracula/vim'
Plug 'liuchengxu/space-vim-dark'

call plug#end()

" General
colorscheme space-vim-dark
set nocompatible                  " We don't care about vi
syntax on                         " Enable syntax highlighting
set number                        " Show line numbers
set nohidden
"set relativenumber
set numberwidth=5
set encoding=utf-8
" set linebreak                     " Break lines at word (requires Wrap lines)
set showbreak=->                  " Wrap-broken line prefix
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
set listchars=tab:▸\ ,eol:¬

" Highlight trailing whitespace
:highlight ExtraWhitespace ctermbg=grey guibg=grey

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

" Remove trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

" Splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" Tab triggers buffer-name auto-completion
set wildchar=<Tab> wildmenu wildmode=full

let mapleader = ","

map <Leader>t :CommandT<Return>
map <Leader>a :bprev<Return>
map <Leader>s :bnext<Return>
map <Leader>d :bd<Return>
map <Leader>f :b

" Show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" Strip trailing whitespace
fun! <SID>StripTrailingWhitespaces()
   let l = line(".")
   let c = col(".")
   %s/\s\+$//e
   call cursor(l, c)
endfun

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_cmd = 'CtrlPMixed'
set autochdir

" Use Tab for autocompletion
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-P>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

"Max out the height of the current split
" ctrl + w _
"
" "Max out the width of the current split
" ctrl + w |
"
" "Normalize all split sizes, which is very handy when resizing terminal
" ctrl + w =
"
" "Swap top/bottom or left/right split
" Ctrl+W R
"
" "Break out current window into a new tabview
" Ctrl+W T
"
" "Close every window in the current tabview but the current one
" Ctrl+W o
