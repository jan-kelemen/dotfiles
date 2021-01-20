" Add shortcut to switch to the tree window 
nnoremap <leader>dn :NERDTreeFocus<CR>

" Focus on current file in tree window 
nnoremap <leader>df :NERDTreeFind<CR>

" Toggle NERDTRee
nnoremap <leader>dd :NERDTreeToggle<CR>

" Start NERDTree and put the cursor back in the other window
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window left
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Open the existing NERDTree on each new tab
autocmd BufWinEnter * silent NERDTreeMirror

