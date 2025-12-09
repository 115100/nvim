local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('HiPhish/rainbow-delimiters.nvim')
Plug('L3MON4D3/LuaSnip', { tag = 'v2.*', ['do'] = 'make install_jsregexp' })
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-vsnip')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/vim-vsnip')
Plug('junegunn/fzf')
Plug('junegunn/fzf.vim')
Plug('mbbill/undotree')
Plug('neovim/nvim-lspconfig')
Plug('nvim-tree/nvim-tree.lua')
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-treesitter/nvim-treesitter', {
	['do'] = function()
		vim.cmd(':TSUpdate')
	end
})
Plug('oxfist/night-owl.nvim')
Plug('saadparwaiz1/cmp_luasnip')

vim.call('plug#end')

require('plugins')
