colorscheme idleFingers
syntax on
"set gfn=Profont\ 9
set gfn=Monospace\ 9
set shell=/bin/bash

filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on
set nocompatible
set modelines=0
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set number
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
"set showmatch
set hlsearch
nnoremap <leader><space> :let @/=''<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
"set colorcolumn=85

set list
set listchars=tab:▸\ ,eol:¬

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
noremap <S-right> <nop>
noremap <S-up> <nop>
noremap <S-down> <nop>
noremap <S-left> <nop>
" Disable backspace
inoremap <Backspace> <nop>
" Shift movement keys one key to the right to fit with norweigan keyboard
noremap ø <right>
noremap l <up>
noremap k <down>
noremap j <left>
noremap h <nop>
noremap Ø <S-right>
noremap L <nop>
noremap K <nop>
noremap J <S-left>
" Make up/down move by wrapped lines
noremap k gj
noremap l gk

" exist insert mode
inoremap jj <ESC>
" move to end of current line
nnoremap ga $
" move to first character on current line
nnoremap gi ^
" cycle between splits
nnoremap <leader>w <C-w>v<C-w>l
" shift-tab = backspace
inoremap <S-tab> <Backspace>

" paste from system clipboard
map <C-V> :put +<CR>

" remove highlighting
nnoremap <silent><Backspace> :nohls<CR>

"toggle between absolute and relative linenumbers
nnoremap <leader>l :exec &nu==1? "set relativenumber" : "set nu"<CR>

"turn on nerdtree
nnoremap <leader>n :NERDTree<CR>

" comment and uncomment lines (viual mode)
vnoremap <leader>m :s/^/#/<CR>
vnoremap <leader>M :s/#/<CR>

" split navigation
nnoremap <leader>w <C-w><C-w>
nnoremap <leader>q <C-w><C-q>

" CommandT mappings
nnoremap <leader>t :CommandT<CR>
nnoremap <leader>cf :CommandTFlush<CR>

" tabs
nnoremap <leader>fn :tabnew<CR>
nnoremap <leader>fc :tabclose<CR>

" switch files
nnoremap <leader>s :e #<CR>

" YouCompleteMe
let g:ycm_key_previous_completion = '<C-TAB>'

" Maximize window on start in GUI mode
if has("gui_running")
  set lines=999 columns=999
endif
