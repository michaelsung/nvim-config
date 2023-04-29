set scrolloff=8
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set termguicolors

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'folke/which-key.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'sudormrfbin/cheatsheet.nvim'
Plug 'nvim-lua/popup.nvim'
call plug#end()

colorscheme catppuccin_mocha

let mapleader = " "
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <C-p> :GFiles<CR> " fzf git files
nnoremap <leader>ff :Files<CR> " fzf all files
nnoremap <C-k> :cnext<CR> " quickfix list - next
nnoremap <C-j> :cprev<CR> " quickfix list - prev
nnoremap <leader>pv :NvimTreeToggle<CR>
nnoremap <leader>h :WhichKey<CR>

lua require'nvim-tree'.setup {}
lua require'which-key'.setup {}