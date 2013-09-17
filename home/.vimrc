set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-bundler.git'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-haml'
Bundle 'slim-template/vim-slim'
Bundle 'scrooloose/nerdtree'
Bundle 'lunaru/vim-twig'
Bundle 'tomtom/tcomment_vim'
Bundle 'mileszs/ack.vim'
" Surrounding parentheses, braces, quotes and so on.
Bundle 'tpope/vim-surround'
" Pretty statusline
Bundle 'Lokaltog/powerline'

" vim-scripts repos
Bundle 'L9'
Bundle 'bufexplorer.zip'
" Bundle 'FuzzyFinder'
Bundle 'kien/ctrlp.vim'
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" ...

Bundle 'flazz/vim-colorschemes'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


" === End of vundle config. ===


" Enable matchit.vim plugin to make mathch parentheses command (%) work with ruby 
" specific constructions.
runtime macros/matchit.vim 

" When vimrc, either directly or via symlink, is edited, automatically reload it
autocmd! bufwritepost .vimrc source ~/.vimrc
autocmd! bufwritepost vimrc source ~/.vimrc
autocmd! bufwritepost bundles.vim source ~/.vimrc

syntax enable

set background=dark
let g:solarized_contrast="high"
let g:solarized_visibility="low"

colorscheme solarized

set number
set cursorline
set list
set listchars=eol:¬,extends:»,tab:▸\ ,trail:›

" don't highlight current cursor line number 
highlight clear CursorLineNr

" hide scrollbars
set guioptions-=r
set guioptions-=L

" status line
set laststatus=2
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" 2 spaces per tab
set autoindent
set smartindent
set expandtab
set softtabstop=2
set shiftwidth=2

" go to the first match as you type
set incsearch
set hlsearch

" Override the 'ignorecase' if the search pattern contains upper case characters
set smartcase 

set nobackup
set noswapfile

" allows you to have unsaved changes in buffers
" and undo history in them
set hidden

set history=10000

" tab completion behavior
set wildmenu
set wildmode=full

" Save on focus lost
autocmd FocusLost * :wa

" noremap <tab> :b#<CR>
noremap <S-tab> :bp<CR>

cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" expand %% to %:h (current buffer's directory for :edit command)
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

map <C-\> :NERDTreeToggle<CR>
map <C-Tab> :BufExplorer<CR>

map <Leader>f :NERDTreeFind<CR>
