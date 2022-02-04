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
Plug 'sudormrfbin/cheatsheet.nvim'
Plug 'pradyungn/Mountain', {'rtp': 'vim'}
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'ryanoasis/vim-devicons'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'kovetskiy/sxhkd-vim'
call plug#end()
" Plugin Config
let g:sneak#label = 1

let g:enable_mountain_statusline = 1
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
set clipboard=unnamedplus
" set spell
set spelllang=en_gb
hi clear SpellBad
hi SpellBad cterm=underline
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
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
nnoremap <leader>g :Goyo<CR>
nnoremap r .
nnoremap j gj
nnoremap k gk
nnoremap ; :
inoremap jj <ESC>   
nnoremap X ZZ
