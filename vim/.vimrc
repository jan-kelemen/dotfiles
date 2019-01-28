"Karpal tunnel syndrome
inoremap jj <Esc>

"Enter 21st century
set nocompatible
set t_Co=256

"Allow execution of local vim configuration files
set exrc
set secure

"By default backspace doesn't go on the previous line
set backspace=indent,eol,start

"Show curenntly edited file
set laststatus=2

"Execute search when typing the query
set incsearch

"Highlight search results
set hlsearch

"Highlight the N'th column
set colorcolumn=80

"Indentation settings
filetype plugin indent on
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4

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

