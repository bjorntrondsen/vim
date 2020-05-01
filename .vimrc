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
" Prevent highligting with # to jump to the next occurence
nnoremap # :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
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
" ctrl-v inline in insert mode
inoremap <C-V> <C-R>*

" remove highlighting
nnoremap <silent><Backspace> :nohls<CR>

"toggle between absolute and relative linenumbers
nnoremap <leader>l :exec &nu==1? "set relativenumber" : "set nu"<CR>

" use :q to exit everything
cnoreabbrev q qa

"turn on nerdtree
nnoremap <leader>n :NERDTree<CR>
" enable nerdtree line numbers
let NERDTreeShowLineNumbers=1
" automatically accept buffer deletion when moving/deleting file
let NERDTreeAutoDeleteBuffer=1

" open veritcal split, close vertical split
nnoremap <leader>w <C-w><C-w>
nnoremap <leader>q <C-w><C-q>

" CtrlP mappings
nnoremap <leader>t :CtrlP<CR>
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend|log)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py|public\/uploads'
let g:ctrlp_show_hidden = 1

" tabs
nnoremap <leader>fn :tabnew<CR>
nnoremap <leader>fc :tabclose<CR>

" switch files
nnoremap <leader>s :e #<CR>

" Dont auto jump to first ack restult
cnoreabbrev Ack Ack!
" Ack shortcut
nnoremap <Leader>a :Ack!<Space>

" Find and replace all in current file
nnoremap <leader>r yiw:%s/\<<C-r><C-w>\>//g<left><left>

" vim-rspec
map <Leader>1 :call RunNearestSpec()<CR>
map <Leader>2 :call RunCurrentSpecFile()<CR>
map <Leader>3 :vert term bundle exec rake parallel:spec<CR>
let g:rspec_command = "vert term rspec {spec}"

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

" Fix issue where syntax highlighting stops working randomly in .vue files because they contain multiple languages
autocmd FileType vue syntax sync fromstart

" Fix Vue pug template commenting
" Copy-pasted from readme at https://github.com/posva/vim-vue
let g:ft = ''
function! NERDCommenter_before()
  if &ft == 'vue'
    let g:ft = 'vue'
    let stack = synstack(line('.'), col('.'))
    if len(stack) > 0
      let syn = synIDattr((stack)[0], 'name')
      if len(syn) > 0
        exe 'setf ' . substitute(tolower(syn), '^vue_', '', '')
      endif
    endif
  endif
endfunction
function! NERDCommenter_after()
  if g:ft == 'vue'
    setf vue
    let g:ft = ''
  endif
endfunction
