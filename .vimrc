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
set nonumber
set relativenumber
set wildignore+=*/tmp/*

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
set textwidth=0
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
" disable Q = enter Ex mode
:nnoremap Q <Nop>
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
" exit insert mode
inoremap jj <ESC>
" move to end of current line
nnoremap ga $
" move to first character on current line
nnoremap gi ^
" cycle between splits
nnoremap <leader>w <C-w>v<C-w>l
" shift-tab = backspace
inoremap <S-tab> <Backspace>

"Use ctrl+c to copy to system clipboard in visual mode
vnoremap <C-c> "+y
" Use ctrl+v to paste from system clipboard
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

" CtrlP mappings
nnoremap <leader>t :CtrlP<CR>
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend|log)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py|public\/uploads'
let g:ctrlp_show_hidden = 1

" vim-seek mappings
let g:SeekKey = 'h'
let g:SeekBackKey = 'H'

" tabs
nnoremap <leader>fn :tabnew<CR>
nnoremap <leader>fc :tabclose<CR>

" switch files
nnoremap <leader>s :e #<CR>

" Maximize window on start in GUI mode
if has("gui_running")
  set lines=999 columns=999
endif

" Treat .rabl as ruby files and add syntax highlighting
au BufRead,BufNewFile *.rabl setf ruby
au BufRead,BufNewFile *.rabl syn keyword rubyRabl node attribute object child collection attributes glue extends
au BufRead,BufNewFile *.rabl hi def link rubyRabl Function
"
" Treat .axlsx as ruby files
au BufRead,BufNewFile *.axlsx setf ruby

" Handlebars/mustache autocomplete
let g:mustache_abbreviations = 1

" Fix syntax highlighting performance
"set nocursorcolumn
"set nocursorline
"set norelativenumber
"set lazyredraw
set re=1
syntax sync maxlines=256

" Highlight the altgr-space character. It is invisible and results in errors that are hard to figure out.
highlight AltGrSpace ctermbg=red guibg=red
match AltGrSpace / /

" Allow project spesific (local) configuration files
set exrc
set secure
