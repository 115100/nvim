local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('HiPhish/rainbow-delimiters.nvim')
Plug('haishanh/night-owl.vim')
Plug('hashivim/vim-hashicorp-tools')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/nvim-cmp')
Plug('junegunn/fzf')
Plug('junegunn/fzf.vim')
Plug('neovim/nvim-lspconfig')

vim.call('plug#end')

require('plugins')
