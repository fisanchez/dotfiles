filetype plugin on 

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')
" Theme
Plug 'flrnprz/candid.vim'
Plug 'rishikanthc/skyfall-vim'

" Make sure you use single quotes
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' } 
" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" UI Plugins
Plug 'itchyny/lightline.vim'

"Docker
Plug 'ekalinin/dockerfile.vim'

" Language Servers
Plug 'dense-analysis/ale'

call plug#end()
" Theme settings{{{
set t_Co=16
syntax enable
colorscheme skyfall

" }}}

" Colors {{{
set termguicolors

syntax enable
set background=dark
" }}} Colors

" Spaces and Tabs {{{
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set copyindent
" }}}

" Autocommands{{{
" autocmd vimenter * NERDTree
" }}}

" Remapping{{{
set number
map <C-o> :NERDTreeToggle<CR>
let mapleader = ','
map <leader>r :!ruby %<cr>
" }}}

