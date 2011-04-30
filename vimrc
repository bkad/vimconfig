set nocompatible
set autoindent
" only works for C
" set smartindent
" set virtualedit=all
set smarttab
set expandtab
set tabstop=2
set shiftwidth=2
set textwidth=110
let &wrapmargin = &textwidth
set formatoptions=cqrol
"filetype plugin on
set ofu=syntaxcomplete#Complete

call pathogen#runtime_append_all_bundles()
filetype off
filetype plugin indent on
syntax enable
nmap <C-J> vip=
"au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif=
set showmatch
set guioptions-=T
set vb t_vb=
set ruler
set nohls
set incsearch
set number
set guifont=Inconsolata:h16
let g:zenburn_high_Contrast=1
colorscheme zenburn

" Adjust zenburn's garish search/visual colors.
hi IncSearch guifg=NONE guibg=#545449
hi Search    guifg=NONE guibg=#545449
hi Visual    guifg=NONE guibg=#444444
hi VisualNOS guifg=NONE guibg=#444444

map <silent> w <Plug>CamelCaseMotion_w
map <silent> W <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap W
sunmap e

map <Home> ^
imap <Home> <Esc>^i
" tab navigation like firefox
nmap <C-S-tab> :tabprevious<cr>
nmap <C-tab> :tabnext<cr>
map <C-S-tab> :tabprevious<cr>
map <C-tab> :tabnext<cr>
imap <C-S-tab> <ESC>:tabprevious<cr>i
imap <C-tab> <ESC>:tabnext<cr>i
"nmap <C-t> :tabnew<cr>
"imap <C-t> <ESC>:tabnew<cr>
" Remap omni-complete to avoid having to type so fast
inoremap <C-Space> <C-X><C-O>
" TagList window toggle
nmap <C-Q> :TlistToggle<cr>
map <C-Q> :TlistToggle<cr>
imap <C-Q> <ESC>:TlistToggle<cr>
"python stuff
let python_highlight_all = 1
" highlight end of line whitespace
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
" Generate tags with: ctags -R -f ~/.vim/tags/python24.ctags /usr/lib/python2.4/
" ctrl-[ to go to the tag under the cursor, ctrl-T to go back.
" set tags+=$HOME/.vim/tags/python24.ctags
" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

" Map the F2 key to the clean white space command
map <F2> :call TrimWhiteSpace()<CR>
map! <F2> :call TrimWhiteSpace()<CR>

" If you want, you can have whitespace cleaned up automatically on write
" Uncomment to enable white space removal on write
"autocmd FileWritePre *   :call TrimWhiteSpace()
"autocmd FileAppendPre *  :call TrimWhiteSpace()
"autocmd FilterWritePre * :call TrimWhiteSpace()
"autocmd BufWritePre *    :call TrimWhiteSpace()
