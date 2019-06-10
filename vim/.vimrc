so /media/data/git/dotfiles/vim/common.vim
so /media/data/git/dotfiles/vim/linux.vim
so /media/data/git/dotfiles/vim/indent4.vim
so /media/data/git/dotfiles/vim/colorcolumn80.vim

"Define the vundlepath varable in the including .vimrc to include Vundle
set runtimepath+=~/.vim/bundle/Vundle.vim

"Disable clangd experimental support in YouCompleteMe
let g:ycm_use_clangd = 0

so /media/data/git/dotfiles/vim/vundle.vim

colorscheme molokai

