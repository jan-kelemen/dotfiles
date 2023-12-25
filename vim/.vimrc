so ~/git/dotfiles/vim/common.vim
so ~/git/dotfiles/vim/linux.vim
so ~/git/dotfiles/vim/indent4.vim
so ~/git/dotfiles/vim/colorcolumn80.vim

if !has('nvim')
    "Define the vundlepath variable in the including .vimrc to include Vundle
    set runtimepath+=~/.vim/bundle/Vundle.vim
    so ~/git/dotfiles/vim/vundle.vim
    so ~/git/dotfiles/vim/ycm.vim
    so ~/git/dotfiles/vim/nerdtree.vim
endif

colorscheme molokai

