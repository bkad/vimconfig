let g:NERDTreeChDirMode=2 " change pwd when NERDTree root changes
let g:NERDChristmasTree=1 " more colorful NERDTree

autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
" Indent guide autocolors works great in macvim
let g:indent_guides_auto_colors = 1

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
let g:fzf_launcher = "/usr/local/bin/iterm2-launcher.sh %s"
