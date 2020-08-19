set encoding=UTF-8
filetype plugin on 
set nocompatible
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
"

"Accounting{{{
autocmd BufNewFile,BufRead *.dat set filetype=ledger
"}}}

" Theme settings{{{
" set termguicolors
" }}}

" UI Changes{{{
" Great references https://alvinalexander.com/
" }}}

" Autocommands{{{
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufNewFile, BufRead *.dat set filetype=ledger
" }}}

"ALE Settings{{{
"highlight ALEWarning ctermbg=none cterm=underline
"}}}

source $HOME/.dotfiles/config/nvim/plugins/plugins.vim
source $HOME/.dotfiles/config/nvim/general/settings.vim
source $HOME/.dotfiles/config/nvim/general/coc.vim
source $HOME/.dotfiles/config/nvim/general/anyfold.vim
source $HOME/.dotfiles/config/nvim/general/markdown.vim
source $HOME/.dotfiles/config/nvim/keys/mapping.vim
