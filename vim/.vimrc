set runtimepath+=~/git/dotfiles/vim

so ~/git/dotfiles/vim/common.vim
so ~/git/dotfiles/vim/clipboard.vim
so ~/git/dotfiles/vim/os.vim
so ~/git/dotfiles/vim/indents.vim
so ~/git/dotfiles/vim/folding.vim
so ~/git/dotfiles/vim/colorcolumn80.vim

if !has('nvim')
    "Define the vundlepath variable in the including .vimrc to include Vundle
    set runtimepath+=~/.vim/bundle/Vundle.vim
    so ~/git/dotfiles/vim/vundle.vim
    if !has_key(environ(), "MINGW_PREFIX")
        so ~/git/dotfiles/vim/ycm.vim
    endif
    so ~/git/dotfiles/vim/nerdtree.vim
    so ~/git/dotfiles/vim/undotree.vim
endif

colorscheme molokai
