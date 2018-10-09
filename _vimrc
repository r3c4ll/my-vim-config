" .vimrc (Vim configuration file)
" Author: Ali Moreno <alimoreno.info>
" Last update: 2013/05/25

" Using:
"   pathogen by Tim Pope
"   vim-neatstatus by Lukasz Grzegorz Maciak
"   molokai by Tomas Restrepoi
"   python-mode by Kirill Klenov

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Setup
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Setup Pathogen to manage your plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle; \
" curl -so ~/.vim/autoload/pathogen.vim \
" https://raw.github.com/tpope/vim-pathogen/master/autoload/patogen.vim
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder
" For example: cd ~/.vim/bundle/ ; git pull ...
call pathogen#infect()

set nocompatible " Not vi compatibile (affects other settings)

filetype off
filetype plugin indent on   " 'plugin': Enables file-specific plugins
                            " 'indent': Indent files
                            " 'on': Enables filetype detection

" Disable backup and swap files, they trigger too many events for file system
" watchers
set nobackup
set nowritebackup
set noswapfile

" Setting history and undolevels
set history=500
set undolevels=500

" Flash screen in place of beeps
"set vb t_vb=

" Searchs behavior
set hlsearch    " Highlight search term in text
set incsearch   " Search as you type
set ignorecase  " Make search strings case insensitive
set smartcase   " If one character is upper-case, it's case sensitive

" Mouse and backspace
set mouse=a "on OSX press Alt and click
"set bs=2    "make backspace behave like normal again


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" No TABs but spaces
set tabstop=2       " Sets tabs to 2 spaces
set softtabstop=2   " Treats four spaces as one tab
set shiftwidth=2    " Use '<' and '>' keys to indent/unindent 4 spaces
set shiftround      " Use multiple of shiftwidth when indenting with
                    " '<' and '>'
set smarttab        " Use 'shiftwidth' setting at start of lines
set expandtab       " Inserts four spaces with the tab key

set autoindent
"set backspace=indent,eol,start " Backspace over everything in insert mode

" Better copy & paste
"set pastetoggle=<F2>
set clipboard=unnamed


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Rebind <Leader> key
let mapleader = "," " Change the mapleader from '\' to ','

" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" Quick quit command
noremap <Leader>e :quit<CR> "Quit current window
noremap <Leader>E :qa!<CR>  "Quit all windows

" Simple window navigation. Bind Ctrl+<movement> keys to move arround the
" windows, instead using Ctrl+w + <movement>
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

" Easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" Removes highlight of your last search. Bind nohl.
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
lnoremap <C-n> :nohl<CR>

" Sort function key
vnoremap <Leader>s :sort<CR>

" Easier moving of code blocks
vnoremap < <gv " Better indentation
vnoremap > >gv " Better indentation

" Easier formatting of paragraphs
vmap Q gq
vmap Q gqap


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show whitespace. MUST be inserted BEFORE the colorscheme command.
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Color scheme
set t_Co=256
colorscheme molokai
"set background=dark " Enable when using the console version

" Useful setups
syntax on           " Enable syntax highlighting
set number          " Show (absolute) line numbers
"set relativenumber " Show (relative) line numbers
set tw=79           " Width of document (used by gd)
set nowrap          " Don't automatically wrap on load
set fo-=t           " Don't automatically wrap text when typing
set cul             " Show cursor line
set colorcolumn=80
"highlight ColorColumn ctermbg=154 " Green
"highlight ColorColumn ctermbg=250 " Light grey
highlight ColorColumn ctermbg=8 " Grey
"set title " Set the terminal's tite
set gfn=Monospace\ 11 " Font type and size for gvim


" ============================================================================
" Python IDE Setup
" ============================================================================ 
