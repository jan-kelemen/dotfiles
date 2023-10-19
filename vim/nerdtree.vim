" Add shortcut to switch to the tree window 
nnoremap <leader>dn :NERDTreeFocus<CR>

" Focus on current file in tree window 
nnoremap <leader>df :NERDTreeFind<CR>

" Toggle NERDTRee
nnoremap <leader>dd :NERDTreeToggle<CR>

" No session loaded i.e: vim -S session.vim or started by git
function! ShowNERDTree()
    
    if v:this_session != '' || argc() == 1 && match(argv(0), '.git/') == 0
        return 0
    else
        return 1
    endif
endfunction

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if ShowNERDTree() | execute 'NERDTree' | wincmd p | endif

"Exit Vim if NERDTree is the only window left
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Open the existing NERDTree on each new tab
autocmd BufWinEnter * silent NERDTreeMirror

autocmd BufEnter NERD_* setlocal nornu
