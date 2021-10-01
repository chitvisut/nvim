"neovim setting and config"

" init autocmd
autocmd!
" set script encoding
scriptencoding utf-8
" stop loading config if it's on tiny or small
if !1 | finish | endif
syntax enable
filetype plugin indent on

""--------------- setup ---------------

let mapleader=' '
set termguicolors background=dark
colorscheme desert

set mouse=a
set nobackup noswapfile
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent smartindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=1 showmode showcmd cmdheight=1
set wildmode=longest,list,full wildmenu
set clipboard=unnamedplus
set title
set number relativenumber
set hidden
set nowrap
set backspace=start,eol,indent
set cursorline
set splitright splitbelow
set completeopt=menuone,noinsert,noselect

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

""-------------- mapping --------------
" Press i to enter insert mode, and ii to exit insert mode.
inoremap ii <Esc>
inoremap jk <Esc>
inoremap kj <Esc>
vnoremap jk <Esc>
vnoremap kj <Esc>

" move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Open current directory
nmap <Leader>t :tabedit 
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Telescope
nnoremap <Leader>ff :Telescope<Return>

""-------------- plugin ---------------

lua require('plugin')

