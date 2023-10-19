"Karpal tunnel syndrome
inoremap jj <Esc>

"Switch the leader key to ',' instead of '\'
let mapleader = ","

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

"Enable code folding
set foldmethod=syntax   
set foldnestmax=10
set nofoldenable

"Enable increment of letters with <C-a> & <C-x>
set nrformats=bin,octal,hex,alpha

"increment/decrement nubmers with +/-
nnoremap + <C-a>
nnoremap - <C-x>

"Center cursor
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

"Resize window
nnoremap <Leader>h :vertical resize +5 <CR>
nnoremap <Leader>l :vertical resize -5 <CR>
nnoremap <Leader>j :resize +5 <CR>
nnoremap <Leader>k :resize -5 <CR>
