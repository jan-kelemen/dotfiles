filetype off

call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'preservim/nerdtree'
  Plugin 'bfrg/vim-cpp-modern'
  Plugin 'mbbill/undotree'

  "https://vi.stackexchange.com/a/31541
  if !has_key(environ(), "MINGW_PREFIX")
    Plugin 'Valloric/YouCompleteMe'
  endif
call vundle#end()

filetype on
