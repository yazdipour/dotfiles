":PlugInstall
call plug#begin('~/.vim/plugged')

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'deoplete-plugins/deoplete-jedi'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'christoomey/vim-tmux-navigator'
"<ctrl-h> => Left <ctrl-j> => Down <ctrl-k> => Up <ctrl-l> => Right ä"<ctrl-\> => Previous split
Plug 'ParamagicDev/vim-medic_chalk'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()

" basics
filetype plugin indent on
syntax on set number
set incsearch
set ignorecase
set smartcase
set nohlsearch
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set nobackup
set noswapfile
set nowrap
set mouse=a

" Theme
syntax enable
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set background=dark
colorscheme medic_chalk
set guifont=Fira\ Code:h11
let g:airline_powerline_fonts = 1

" NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd vimenter * NERDTree
let g:NERDTreeChDirMode=2
let g:NERDTreeDirArrowExpandable = '▶'
let g:NERDTreeDirArrowCollapsible = '🔽'
let g:NERDTreeWinPos = "right"
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" deoplete
let g:deoplete#enable_at_startup = 1
