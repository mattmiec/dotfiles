" VUNDLE PLUGINS

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" airline status bar
Plugin 'vim-airline/vim-airline'

" tab completion
Plugin 'ervandew/supertab'

" fuzzy file finding, activate with :FZF/Files
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" closing brackets/parens across lines
"Plugin 'rstacruz/vim-closer'

" closing structures (for some languages)
"Plugin 'tpope/vim-endwise'

" insert/delete brackets, parens, quotes in pair
"Plugin 'jiangmiao/auto-pairs'

" jump to some word after pressing <leader><leader>w/b (forward/backward)
Plugin 'easymotion/vim-easymotion'

" :rename command
Plugin 'wojtekmach/vim-rename.git'

" git gutter display, control
Plugin 'airblade/vim-gitgutter'
autocmd VimEnter * nunmap <buffer> <leader>hp
autocmd VimEnter * nunmap <buffer> <leader>hu
autocmd VimEnter * nunmap <buffer> <leader>hs
autocmd VimEnter * nmap  ghp <Plug>GitGutterPreviewHunk
autocmd VimEnter * nmap  ghs <Plug>GitGutterUndoHunk
autocmd VimEnter * nmap  ghu <Plug>GitGutterStageHunk

" visual indentation indicators
Plugin 'nathanaelkane/vim-indent-guides'

" type open bracket or quote on selected region to surround (and more)
Plugin 'tpope/vim-surround'

" better markdown support
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" KEY REMAPPINGS

" timeout milliseconds
set timeoutlen=500

" remap escape
imap fd <Esc>

" remap cmd prefix
nmap ; :

" set leader
let mapleader = " "

" fast save
nmap <leader>s :w<cr>

" fast quit
nmap <leader>a :q<cr>

" fast force quit
nmap <leader>q :q!<cr>

" fast save/quit
nmap <leader>wq :wq<cr>

" clear highlight with leader
nmap <leader>/ :noh<cr>

" configure backspace
set backspace=eol,start,indent

" splitting/windows
set splitbelow
set splitright
nmap <leader>H :split<cr>
nmap <leader>V :vsplit<cr>
nmap <leader>h <C-W>h
nmap <leader>j <C-W>j
nmap <leader>k <C-W>k
nmap <leader>l <C-W>l
nmap <leader>ww <C-w><C-w>

" buffers
nmap <leader>n :bn<cr>
nmap <leader>p :bp<cr>
nmap <leader>e :e 

" shell commands
nmap <leader>f :!
nmap <leader>ff :!!<cr>

" beginning/end line
nmap B ^
nmap E $
vmap B ^
vmap E $
omap B ^
omap E $

" redo
nmap <leader>u <C-R>

" move down/up by visual line
nmap j gj
nmap k gk

" scrolling
nmap J 5<C-E>
nmap K 5<C-Y>

" INTERFACE/BEHAVIOR

" line numbering
set nu

" syntax highlighting
syntax on

" utf8 encoding
set encoding=utf8

" indentation/wrapping
set ai
"set si
set wrap

" tabs/spaces
"set expandtab
"set smarttab
set softtabstop=4
set shiftwidth=4

" always show status line
set laststatus=2

" allow hidden buffers
set hidden

" scrolloff
set so=5

" turn on wild menu
set wildmenu
set wildmode=longest:full,full

" set history
set history=1000

" ignore case when searching
set ignorecase

" except when pattern contains uppercase
set smartcase

" enable incremental search
set incsearch

" search highlighting
set hlsearch

" don't redraw while executing macros (for performance)
set lazyredraw

" enable extended % matching
runtime macros/matchit.vim

" stifle interruptive prompts
set shortmess=atI

" visual flash instead of bell
set visualbell

" highlight trailing whitespace
:highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
:match ExtraWhitespace /\s\+$/

" enable movement to next/previous line
set whichwrap+=<,>,h,l

" show matchng brackets when text indicator is over them
set showmatch
set mat=2

" no (permanent) backups
set nobackup

" set background to dark to get correct colors in tmux
set background=dark
