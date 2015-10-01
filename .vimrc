"=============================================================
" Plugin Install (junegunn/vim-plug)
"=============================================================

call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'              " status/tabline
Plug 'jonathanfilip/vim-lucius'       " colorscheme
Plug 'tpope/vim-surround'             " surroundings, parentheses, brackets, quotes
Plug 'junegunn/vim-easy-align'        " alignment
Plug 'Yggdroot/indentLine'            " display vertical indentation
Plug 'ervandew/supertab'              " use <Tab> for insert completion
Plug 'Raimondi/delimitMate'           " automatic closing of quotes, brackets, parentheses
Plug 'ntpeters/vim-better-whitespace' " hightlight and remove trailing whitespace characters
Plug 'vim-scripts/matchit.zip'        " extended % matching
Plug 'joonty/vim-phpqa'               " php quality checking tool

call plug#end()


"=============================================================
" Global Settings
"=============================================================

filetype plugin on
filetype indent on
syntax enable

set encoding=utf-8
set ffs=unix,dos,mac
set autoread
set backspace=indent,eol,start
set nopaste
set number
set ruler
set cursorline
set cursorcolumn
set ignorecase
set laststatus=2
set smartcase
set hlsearch
set incsearch
set textwidth=180
set synmaxcol=240
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
" set list!
" set listchars=trail:␣,tab:⇥ᐧ,nbsp:⍽,eol:␤,extends:▸,precedes:◂
" set listchars=eol:¬

set t_Co=256
colo lucius

"=============================================================
" Plugin Settings
"=============================================================

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" indent-line
let g:indentLine_color_term = 253 " default is 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'

" vim-easy-align
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" phpqa
let g:phpqa_php_cmd              = '/usr/bin/php'
let g:phpqa_codesniffer_cmd      = '/usr/bin/phpcs' " PHP Code Sniffer binary (default = 'phpcs')
let g:phpqa_messdetector_autorun = 0                " Don't run messdetector on save (default = 1)
let g:phpqa_codesniffer_autorun  = 0                " Don't run codesniffer on save (default = 1)
let g:phpqa_codecoverage_autorun = 1                " Show code coverage on load (default = 0)

" vim-better-whitespace
autocmd BufWritePre * StripWhitespace


"=============================================================
" Customize Settings
"=============================================================

" Quickly open/reload vim
" nnoremap ev :split $MYVIMRC<CR>
" nnoremap sv :source $MYVIMRC<CR>

" Paste toggle key
set pastetoggle=<F2>

" Smart way to move between windows
"map <C-j> <C-W>j
"map <C-k> <C-W>k
"map <C-h> <C-W>h
"map <C-l> <C-W>l

" Moving between windows and split-windows
noremap f <C-W>w

" Change split-windows size
nnoremap - <C-W>_ <C-W><bar> <CR>
noremap _ <C-W>=

" Moving betweeb tab
nnoremap th :tabfirst<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
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
