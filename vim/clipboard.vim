"Use system clipboard by default
if has('win32') || has('win64')
    set clipboard=unnamed
elseif has('nvim')
    set clipboard=unnamedplus
else
    set clipboard=unnamedplus,autoselect
endif
