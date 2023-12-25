"Use system clipboard by default
if !has('nvim')
    set clipboard=unnamedplus,autoselect
else
    set clipboard=unnamedplus
endif

packadd termdebug
