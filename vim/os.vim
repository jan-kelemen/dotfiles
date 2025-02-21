if has('win32') || has('win64')
    if has('nvim')
        set backupdir=$TEMP//
        set directory=$TEMP//
        set undodir=$TEMP//
    else
        set backupdir=%TEMP%//
        set directory=%TEMP%//
        set undodir=%TEMP%//
    endif
else 
    set backupdir=/tmp//
    set directory=/tmp//
    set undodir=/tmp//
endif
