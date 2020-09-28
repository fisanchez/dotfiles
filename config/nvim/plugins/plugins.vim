
call plug#begin('~/.local/share/nvim/plugged')
" Theme
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

"Window management

" MD Paste
Plug 'https://github.com/ferrine/md-img-paste.vim.git'

"General Programming Plugin
Plug 'https://github.com/tpope/vim-commentary.git'

" Conquer of Completition  {{{ 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"}}}

Plug 'jparise/vim-graphql'

Plug 'flrnprz/candid.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'rishikanthc/skyfall-vim'

" Fuzzy Find
Plug '/usr/local/opt/fzf'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'

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

" Themes
Plug 'dracula/vim', { 'as': 'dracula' }

" Ruby{{{
Plug 'https://github.com/thoughtbot/vim-rspec.git'
" }}}
"
" Elixir {{{
Plug 'elixir-editors/vim-elixir'
" }}}

"Docker
Plug 'ekalinin/dockerfile.vim'

" Language Servers
Plug 'dense-analysis/ale'

" GIT
Plug 'git@github.com:tpope/vim-fugitive.git'

" Vim Anyfold
Plug 'git@github.com:pseewald/vim-anyfold.git'

" HTML
Plug 'mattn/emmet-vim'

" Note taking
Plug 'vimwiki/vimwiki'
Plug 'https://github.com/vim-pandoc/vim-pandoc.git'
Plug 'https://github.com/vim-pandoc/vim-pandoc-syntax.git'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" JS Plugins
Plug 'peitalin/vim-jsx-typescript'
Plug 'pangloss/vim-javascript'


" VueJS Plugins{{{
Plug 'https://github.com/posva/vim-vue.git'
Plug 'https://github.com/ap/vim-css-color.git'
" }}}
"
Plug 'kevinoid/vim-jsonc'

call plug#end()

