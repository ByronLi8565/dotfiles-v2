call plug#begin('~/.config/nvim/plugged')
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'kyazdani42/nvim-web-devicons' 
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
Plug 'ms-jpq/coq_nvim', {'branch': 'coq','do':':COQdeps'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
Plug 'neovim/nvim-lspconfig', {'branch': '3p'}
Plug 'sbdchd/neoformat'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'sheerun/vim-polyglot'
Plug 'ggandor/leap.nvim'
Plug 'sainnhe/everforest'
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v1.*'}
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'kyazdani42/nvim-tree.lua'
call plug#end()



lua require'lspconfig'.clangd.setup{}
lua require'lspconfig'.pylsp.setup{}




let g:plug_window = 'bo new' 
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
let g:coq_settings = { 'auto_start':'shut-up'}
let g:limelight_conceal_ctermfg = 240
set termguicolors
set background=dark
let g:everforest_background = 'hard'
" For better performance
let g:everforest_better_performance = 1
colorscheme everforest
nnoremap <leader>, :noh<cr>
nnoremap <leader>g :Goyo<CR>
nnoremap j gj
nnoremap k gk
nnoremap X ZZ
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-s> :w<CR>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
lua require('leap').set_default_keymaps()
nnoremap s <cmd>lua require'leap'.leap { ['target-windows'] = { vim.api.nvim_get_current_win() } }<cr>
