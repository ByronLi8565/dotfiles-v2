call plug#begin('~/.config/nvim/plugged')
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'sudormrfbin/cheatsheet.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'ryanoasis/vim-devicons'
Plug 'kovetskiy/sxhkd-vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
Plug 'neovim/nvim-lspconfig', {'branch': '3p'}
Plug 'easymotion/vim-easymotion'
Plug 'psliwka/vim-smoothie'
Plug 'ThePrimeagen/vim-be-good'
Plug 'sbdchd/neoformat'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'sheerun/vim-polyglot'

call plug#end()
lua require'lspconfig'.clangd.setup{}
let g:sneak#label = 1
let g:enable_mountain_statusline = 1
let g:EasyMotion_smartcase = 1
let g:plug_window = 'bo new' 
let g:EasyMotion_do_mapping = 0
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
let g:coq_settings = { 'auto_start':'shut-up'}

nnoremap <leader>, :noh<cr>
nnoremap <leader>g :Goyo<CR>
nnoremap <leader>t <cmd>CHADopen --nofocus<cr>
nnoremap j gj
nnoremap k gk
nnoremap X ZZ
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-s> :w<CR>
map <Leader> <Plug>(easymotion-prefix)
nmap s <Plug>(easymotion-overwin-f2)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
