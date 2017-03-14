set nocompatible
set autoindent
set smarttab
set expandtab
set tabstop=2
set shiftwidth=2
set textwidth=110
let &wrapmargin=&textwidth
set formatoptions=cqrol
filetype indent plugin on
"set ofu=syntaxcomplete#Complete

syntax enable
nmap <C-J> vip=
set showmatch
" Disable Toolbar
set guioptions-=T
set vb t_vb=
set ruler
set nohls
set incsearch
set number
set relativenumber
set guifont=Inconsolata:h16
let g:zenburn_high_Contrast=1
colorscheme zenburn

" Adjust zenburn's garish search/visual colors.
hi IncSearch guifg=NONE guibg=#545449
hi Search    guifg=NONE guibg=#545449
hi Visual    guifg=NONE guibg=#444444
hi VisualNOS guifg=NONE guibg=#444444

"adjust YCM menu
hi Pmenu guifg=NONE guibg=#444444

omap <silent> iw <Plug>CamelCaseMotion_iw
xmap <silent> iw <Plug>CamelCaseMotion_iw
omap <silent> ib <Plug>CamelCaseMotion_ib
xmap <silent> ib <Plug>CamelCaseMotion_ib
omap <silent> ie <Plug>CamelCaseMotion_ie
xmap <silent> ie <Plug>CamelCaseMotion_ie
map <silent> w <Plug>CamelCaseMotion_w
map <silent> W <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> E <Plug>CamelCaseMotion_ge
sunmap w
sunmap W
sunmap e
sunmap E

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
inoremap <C-Space> <C-x><C-o>

function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

" Map the F2 key to the clean white space command
map <F2> :call TrimWhiteSpace()<CR>
map! <F2> :call TrimWhiteSpace()<CR>


" start ctrlp from the working directory
let g:ctrlp_working_path_mode = 0
let g:ctrlp_follow_symlinks = 1
set wildignore+=*.swp,*.swo,*.swn,*.pyc
"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_user_command = {
  \'types': {
    \1: ['tubecore/', 'cd %s && find . -type f -not -name ".*" -not -name "." | egrep -v "\.git/|\.venv/|\.vagrant/|static\/public\/lib/|\.sass\-cache/|vendor/|node_modules/|patternlibrary/|\.pyc|static\/public\/.*\.js" | cut -c 3-'],
    \2: ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard'],
  \}
\}


" Go specific settings
augroup go
  au!
  au FileType go setlocal noexpandtab
augroup END

noremap <Space> :call NERDComment("n", "Toggle")<cr>

let python_highlight_all = 1

let mapleader = ','

au BufRead,BufNewFile,BufEnter /Users/kle/tubular/**/*.py setlocal ts=4 sts=4 sw=4 colorcolumn=100
autocmd FileType typescript setlocal completeopt+=menu,preview

" Need this for vim commit editing to make backspace work for some reason
set backspace=indent,eol,start
