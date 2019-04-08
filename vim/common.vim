"Karpal tunnel syndrome
inoremap jj <Esc>

"Enter 21st century
set nocompatible
set t_Co=256

"Show the name of currently edited file in window title
set title

"Allow execution of local vim configuration files
set exrc
set secure

"Make vim behave normally when using backspace
set backspace=indent,eol,start

"Enable use of mouse in terminal for selection
set mouse=a

"Show curenntly edited file
set laststatus=2

"More conventional sides to open new windows
set splitbelow splitright

"Case insensitive pattern matching
set ignorecase

"Disable ignorecase when pattern contains uppercase characters
set smartcase

"Execute search when typing the query
set incsearch

"Highlight search results
set hlsearch

"Disable wrapping 
set nowrap

"Show cursor position
set ruler

"Indentation settings
filetype plugin indent on
set autoindent
set expandtab

"Turn on syntax highlighting
syntax on

"Have relative numbers in normal mode with a absloute number for current line
"and absolute numbers in insert mode
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

"Enable recursive search down to subfolders
set path+=**
set wildmenu

"File browsing settings
let g:netrw_banner=0

