" Colorcolumn settings, 7.3 only
"set colorcolumn=110
let &colorcolumn = &wrapmargin
hi ColorColumn guibg=#4E4E4E
hi ExtraWhitespace guibg=#CCCCCC
"auto open NERDtree on new tabs
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
autocmd VimEnter * wincmd l
let g:NERDTreeChDirMode=2 " change pwd when NERDTree root changes
let g:NERDChristmasTree=1 " more colorful NERDTree
IndentGuidesToggle

autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

" automatically focus the window on new nerd tree tabs
" autocmd BufNew * wincmd l
