local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('haishanh/night-owl.vim')
Plug('hashivim/vim-hashicorp-tools')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-vsnip')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/vim-vsnip')
Plug('junegunn/fzf')
Plug('junegunn/fzf.vim')
Plug('luochen1990/rainbow')
Plug('neovim/nvim-lspconfig')
Plug('tell-k/vim-autopep8')

vim.call('plug#end')

require('plugins')
