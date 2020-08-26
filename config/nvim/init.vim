"-----PLUGIN SETTINGS-------

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Intellisense engine for Vim8 & Neovim 
" https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Lean & mean status/tabline for vim that's light as air
" https://github.com/vim-airline/vim-airline
Plug 'bling/vim-airline'

" A tree explorer plugin for vim.
" https://github.com/preservim/nerdtree
Plug 'scrooloose/nerdtree'

" A plugin of NERDTree showing git status
" https://github.com/Xuyuanp/nerdtree-git-plugin
Plug 'Xuyuanp/nerdtree-git-plugin'

" Extra syntax and highlight for nerdtree files
" https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" A Vim plugin which shows git diff markers in the sign column and stages/previews/undoes hunks and partial hunks.
" https://github.com/airblade/vim-gitgutter
Plug 'airblade/vim-gitgutter'

" Fuzzy file, buffer, mru, tag, etc finder.
" https://github.com/kien/ctrlp.vim
Plug 'ctrlpvim/ctrlp.vim'

" VIM Darcula Theme
" https://github.com/blueshirts/darcula
Plug 'blueshirts/darcula'

" Automatically save changes to disk in Vim
" https://github.com/907th/vim-auto-save
Plug '907th/vim-auto-save'

" Go development plugin for Vim
" https://github.com/fatih/vim-go
Plug 'fatih/vim-go'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"-----GENERAL SETTINGS-------
syntax enable
colorscheme darcula

let g:auto_save = 1             "enable AutoSave on startup
set laststatus=2                "see the current mode, file name, file status, ruler, etc...2

set number                      "Show line numbers
set autoindent                  "Auto-indent new lines
set shiftwidth=2                "Number of auto-indent spaces
set smartindent                 "Enable smart-indent
set smarttab                    "Enable smart-tabs
set softtabstop=2               "Number of spaces per Tab

set ruler                       "Show row and column ruler information
set undolevels=1000             "Number of undo levels
set backspace=indent,eol,start  "Backspace behaviour

"-----SEARCH-------
set ignorecase                  "case insensitive
set smartcase                   "use case if any caps used 
set incsearch                   "show match as search proceeds
set hlsearch                    "search highlighting

"-----NERDTree----
let g:NERDTreeWinPos = "left"							"display on the left
let NERDTreeShowHidden=1							"show dotfiles
let g:NERDTreeIgnore = ['^node_modules$']					"ignore folder
