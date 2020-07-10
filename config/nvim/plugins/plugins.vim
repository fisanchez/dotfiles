
call plug#begin('~/.local/share/nvim/plugged')
" Theme
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Conquer of Completition  {{{ 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"}}}


Plug 'flrnprz/candid.vim'
Plug 'rishikanthc/skyfall-vim'

" Fuzzy Find
Plug '/usr/local/opt/fzf'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Accounting
Plug 'https://github.com/ledger/vim-ledger.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

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

" Vim Icons
Plug 'ryanoasis/vim-devicons'

" Ruby{{{
Plug 'https://github.com/thoughtbot/vim-rspec.git'

" }}}

"Docker
Plug 'ekalinin/dockerfile.vim'

" Language Servers
Plug 'dense-analysis/ale'

" HTML
" Plug "https://github.com/mattn/emmet-vim.git"

" Note taking
Plug 'vimwiki/vimwiki'
Plug 'https://github.com/vim-pandoc/vim-pandoc.git'
Plug 'https://github.com/vim-pandoc/vim-pandoc-syntax.git'

" VueJS Plugins{{{
Plug 'https://github.com/posva/vim-vue.git'
Plug 'https://github.com/ap/vim-css-color.git'
" }}}
call plug#end()
