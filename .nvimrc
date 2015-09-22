"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PlugInstall (https://github.com/junegunn/vim-plug)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.nvim/plugged')

" colorscheme
Plug 'jonathanfilip/vim-lucius'

" utilities
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'Yggdroot/indentLine'
Plug 'ervandew/supertab'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'Raimondi/delimitMate'
Plug 'joonty/vim-phpqa'

" Fuzzy finder
Plug 'kien/ctrlp.vim'

" Hightlight and remove trailing whitespace characters
Plug 'ntpeters/vim-better-whitespace'

Plug 'vim-scripts/matchit.zip'

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Leader key
let mapleader = "\<Space>"

" Quickly open/reload vim
nnoremap ev :split $MYVIMRC<CR>
nnoremap sv :source $MYVIMRC<CR>

noremap <Leader> :

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Paste toggle key
set pastetoggle=<F2>

" Intuitive backspacing in insert mode
set backspace=indent,eol,start

" Always show current position
set number
set ruler
set cursorline
set cursorcolumn
set numberwidth=3

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Enable syntax highlighting
set t_Co=256
syntax enable

" Vim long line
set textwidth=120
set synmaxcol=150

colo lucius

" Set utf8 as standard encoding and en_US as the standard language
if !has('nvim') " nvim sets the encoding by default to utf-8
  set encoding=utf-8
endif

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Hightlight eol
" set list!
" set listchars=trail:␣,tab:⇥ᐧ,nbsp:⍽,eol:␤,extends:▸,precedes:◂
" set listchars=eol:¬


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Smart way to move between windows
"map <C-j> <C-W>j
"map <C-k> <C-W>k
"map <C-h> <C-W>h
"map <C-l> <C-W>l
noremap wj <C-W>j
noremap wk <C-W>k
noremap wh <C-W>h
noremap wl <C-W>l

" Moving between windows and split-windows
noremap f <C-W>w

" Change split-windows size
noremap <Up> <C-W>_
noremap <Down> <C-W>=
noremap <Left> <C-W>=
noremap <Right> <C-W><bar>

nnoremap - <C-W>_ <C-W><bar> <CR>
noremap _ <C-W>=

" Go to begin and end of line
noremap 0 ^
noremap 9 $

" Moving betweeb tab
nnoremap th :tabfirst<CR>
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tt :tabedit<Space>
nnoremap td :tabclose<CR>
nnoremap t1 1gt
nnoremap t2 2gt
nnoremap t3 3gt
nnoremap t4 4gt
nnoremap t5 5gt
nnoremap t6 6gt
nnoremap t7 7gt
nnoremap t8 8gt
nnoremap t9 9gt

nnoremap gj w

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" indent-line
" let g:indentLine_color_term = 239
let g:indentLine_color_term = 253
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" vim-easy-align
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" snipmate
imap <C-J> <Plug>snipMateNextOrTrigger
imap <Tab> <Plug>snipMateTrigger

" phpqa
let g:phpqa_php_cmd='/usr/bin/php'

" PHP Code Sniffer binary (default = "phpcs")
let g:phpqa_codesniffer_cmd='/usr/bin/phpcs'

" Don't run messdetector on save (default = 1)
let g:phpqa_messdetector_autorun = 0

" Don't run codesniffer on save (default = 1)
let g:phpqa_codesniffer_autorun = 0

" Show code coverage on load (default = 0)
let g:phpqa_codecoverage_autorun = 1

" vim-better-whitespace
autocmd BufWritePre * StripWhitespace

" CtrlP
let g:ctrlp_by_filename = 1
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10,results:10'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,empty
let g:ctrlp_custom_ignore = { 'dir': '\v[\/]\.(git|hg|svn)$', 'file': '\v\.(exe|so|dll)$' }

vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

nnoremap <CR> G
nnoremap <BS> gg

map m %
