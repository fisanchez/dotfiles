" set leader key
let g:mapleader = "\<Space>"
let g:netrw_banner = 0                  " Removes banner from default explorer

let g:vimwiki_list = [{'path': '~/github/notes',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let g:ledger_maxwidth = 80
let g:ledger_fillstring = '    -'
let NERDTreeShowHidden=1

syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set softtabstop=2
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set splitbelow                          " Make splitting more natural than the default
set splitright
" set autochdir                           " Your working directory will always be the same as your working directory

"Theme
set t_Co=256                             " Support 256 colors
set background=dark                     " tell vim what the background color looks like
syntax enable
" colorscheme skyfall
" [buffer number] followed by filename:
set statusline=[%n]\ %t
" for Syntastic messages:
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" show line#:column# on the right hand side
set statusline+=%=%l:%c

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %

" Sometimes syntax highlighting can get out of sync in large JSX and TSX files. 
" This was happening too often for me so I opted to enable syntax sync fromstart, 
" which forces vim to rescan the entire buffer when highlighting. 
" This does so at a performance cost, especially for large files. 
" Enable this when I enter a JavaScript or TypeScript buffer, and disable it when I leave:
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear


