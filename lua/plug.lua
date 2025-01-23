local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('nvim-treesitter/nvim-treesitter', {
	['do'] = function()
		vim.cmd(':TSUpdate')
	end
})
Plug('HiPhish/rainbow-delimiters.nvim')
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
Plug('oxfist/night-owl.nvim')

vim.call('plug#end')

require('plugins')
