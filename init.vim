syntax on
set mouse=a
set noerrorbells
set novisualbell
let mapleader = ","
nmap <leader>w :w!<cr>
set ignorecase 
set smartcase
set hlsearch
set incsearch
set encoding=utf8
set ffs=unix

call plug#begin('~/.vim/plugged')
" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }


" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Beatiful colorshemes
Plug 'flazz/vim-colorschemes'

" Rust 
Plug 'rust-lang/rust.vim'
" Python
Plug 'davidhalter/jedi-vim'
call plug#end()

nnoremap <C-t> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree

colorscheme happy_hacking
