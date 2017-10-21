execute pathogen#infect()

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
set nu
set hls is
set nowrap
set autoindent
set shiftwidth =4
set rnu
set laststatus=2
set mouse=a
set cursorline
set ts=4
set expandtab

let php_sql_query = 1
let maplocalleader = "\\"
set sidescroll=5

map <C-B> :!php -l %<CR>

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap jk <esc>

nnoremap - ddp
nnoremap _ ddkP
nnoremap Y y$
nnoremap j gj
nnoremap k gk
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" iabbrev abreviacion  palabra completa
let g:signify_vcs_list = ['svn']
set noshowmode
set encoding=utf-8
set wildmenu
set winwidth=140
set smartcase
set clipboard=unnamed

"==AIRLINE==
let g:airline_theme='term'
let g:airline_powerline_fonts = 1
"==========

"==SYNTASTIC==
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"============

"==NERDCOMMENTER==
filetype plugin on
"================

"==SIGNIFY==
let g:signify_vcs_list = [ 'svn', 'git' ]
highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=118
highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=160
highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=226
"==========

"==NERDTREE==
map <silent> <C-n> :NERDTreeToggle<CR>
"============
"
"==ctrlp==
set runtimepath^=~/.vim/bundle/ctrlp.vim
"========
