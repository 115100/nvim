local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('HiPhish/rainbow-delimiters.nvim')
Plug('L3MON4D3/LuaSnip', { tag = 'v2.*', ['do'] = 'make install_jsregexp' })
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
Plug('rafamadriz/friendly-snippets')
Plug('saghen/blink.cmp', { tag = 'v1.*' })

vim.call('plug#end')

require('plugins')
