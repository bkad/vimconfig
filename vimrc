set nocompatible
set autoindent
set smarttab
set expandtab
set tabstop=2
set shiftwidth=2
set textwidth=110
let &wrapmargin=&textwidth
set formatoptions=cqrol
"filetype plugin on
"set ofu=syntaxcomplete#Complete

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

"adjust YCM menu
hi Pmenu guifg=NONE guibg=#444444

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
"inoremap <C-Space> <C-X><C-O>

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

" start ctrlp from the working directory
let g:ctrlp_working_path_mode = 0
let g:ctrlp_follow_symlinks = 1
set wildignore+=*.swp,*.swo,*.swn,*.pyc
let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\.hg$\|\.svn$\|node_modules$\|\.sass\-cache$\|components$',
  \ }


" colors from https://github.com/Flowdalic/zenburn-emacs/blob/master/zenburn-theme.el
" red-4
" blue+1
" green+2
" yellow-2
" magenta
" orange
" blue-1
" green+1
" red+1
" blue+1
" yellow
" FIRST cyan
let g:rbpt_colorpairs = [
    \ ['darkred',   '#8c5353'],
    \ ['darkcyan',  '#94bff3'],
    \ ['darkgreen', '#9fc59f'],
    \ ['darkblue',  '#d0bf8f'],
    \ ['gray',      '#dc8cc3'],
    \ ['darkred',   '#dfaf8f'],
    \ ['gray',      '#7cb8bb'],
    \ ['darkred',   '#8fb28f'],
    \ ['darkcyan',  '#dca3a3'],
    \ ['darkgreen', '#94bff3'],
    \ ['darkblue',  '#f0dfaf'],
    \ ['gray',      '#93e0e3'],
    \ ]

let g:rbpt_max = len(g:rbpt_colorpairs)

" Go specific settings
augroup go
  au!
  au FileType go setlocal noexpandtab
augroup END

noremap <Space> :call NERDComment("n", "Toggle")<cr>

au BufRead,BufNewFile,BufEnter /Users/kle/tubular/**/*.py setlocal ts=4 sts=4 sw=4 colorcolumn=100
