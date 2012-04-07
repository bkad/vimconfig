set nocompatible
set autoindent
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

" remap the Home key to behave like ^
map <Home> ^
imap <Home> <Esc>^i

" tab navigation
nmap <C-S-tab> :tabprevious<cr>
nmap <C-tab> :tabnext<cr>
map <C-S-tab> :tabprevious<cr>
map <C-tab> :tabnext<cr>
imap <C-S-tab> <ESC>:tabprevious<cr>i
imap <C-tab> <ESC>:tabnext<cr>i
nmap <C-t> :tabnew<cr>
imap <C-t> <ESC>:tabnew<cr>

" Remap omni-complete
inoremap <C-Space> <C-X><C-O>

function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

" Map the F2 key to the clean white space command
map <F2> :call TrimWhiteSpace()<CR>
map! <F2> :call TrimWhiteSpace()<CR>

" auto close scratch window after omnifunc preview
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif 
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"vim clojure
let vimclojure#HighlightBuiltins=1
let vimclojure#ParenRainbow=1

let g:ctrlp_working_path_mode = 0
set wildignore+=*.swp,*.swo,*.swn,*.pyc
let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\.hg$\|\.svn$\|node_modules$',
  \ }
