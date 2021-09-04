" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
augroup AutoCmd
    autocmd!
    autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif
    autocmd! BufWritePost $MYVIMRC source % | echom "Reloaded " . $MYVIMRC 
augroup END 
au FocusLost * :wa


call plug#begin('~/.config/nvim/plugged')
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'justinmk/vim-sneak'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'



call plug#end()
" Plugin Config
let g:sneak#label = 1

"Automate Changes
"Settings
let mapleader=" "
set relativenumber
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set undofile
set wildmenu
set wildmode=list:longest
set scrolloff=3
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
"Remaps
nnoremap <leader>, :noh<cr>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
nnoremap ; :
inoremap jj <ESC>   
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-n> :NvimTreeToggle<CR> 
