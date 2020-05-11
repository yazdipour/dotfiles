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
Plug 'scrooloose/nerdcommenter'
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

" deoplete
let g:deoplete#enable_at_startup = 1

" netrw
" https://github.com/BrodieRobertson/dotfiles/blob/master/config/nvim/init.vim
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 20
let g:NetrwIsOpen=0

function! OpenToRight()
  :normal v
  let g:path=expand('%:p')
  :q!
  execute 'belowright vnew' g:path
  :normal <C-w>l
endfunction

function! OpenBelow()
  :normal v
  let g:path=expand('%:p')
  :q!
  execute 'belowright new' g:path
  :normal <C-w>l
endfunction

function! NetrwMappings()
    " Hack fix to make ctrl-l work properly
    noremap <buffer> <A-l> <C-w>l
    noremap <buffer> <C-l> <C-w>l
    noremap <silent> <A-f> :call ToggleNetrw()<CR>
    noremap <buffer> V :call OpenToRight()<cr>
    noremap <buffer> H :call OpenBelow()<cr>
endfunction

augroup netrw_mappings
    autocmd!
    autocmd filetype netrw call NetrwMappings()
augroup END

" Allow for netrw to be toggled
function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction

" Check before opening buffer on any file
function! NetrwOnBufferOpen()
  if exists('b:noNetrw')
      return
  endif
  call ToggleNetrw()
endfun

" Close Netrw if it's the only buffer open
autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" || &buftype == 'quickfix' |q|endif

" Make netrw act like a project Draw
augroup ProjectDrawer
  autocmd!
 	" Don't open Netrw
  autocmd VimEnter ~/.config/joplin/tmp/*,/tmp/calcurse*,~/.calcurse/notes/*,~/vimwiki/*,*/.git/COMMIT_EDITMSG let b:noNetrw=1
  autocmd VimEnter * :call NetrwOnBufferOpen()
augroup END
