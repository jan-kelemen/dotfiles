nnoremap <Leader>u :UndotreeToggle<CR>

let g:undotree_ShortIndicators=1

let g:undotree_SplitWidth=20

if has('win32')
    let g:undotree_DiffCommand="FC"
end
