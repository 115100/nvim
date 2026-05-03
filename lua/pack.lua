if vim.version.ge(vim.version(), '0.12.0') then
	vim.api.nvim_create_autocmd('PackChanged', {
		callback = function(ev)
			local name, kind = ev.data.spec.name, ev.data.kind
			if name == 'nvim-treesitter' and kind == 'update' then
				if not ev.data.active then vim.cmd.packadd('nvim-treesitter') end
				vim.cmd('TSUpdate')
			end
			if name == 'LuaSnip' and kind == 'update' then
				if not ev.data.active then vim.cmd.packadd('LuaSnip') end
				vim.system({ 'make', 'install_jsregexp' }, { cwd = ev.data.path })
			end
		end
	})

	vim.pack.add({
		'https://github.com/HiPhish/rainbow-delimiters.nvim',
		{
			src = 'https://github.com/L3MON4D3/LuaSnip',
			version = vim.version.range('2.x'),
		},
		'https://github.com/junegunn/fzf',
		'https://github.com/junegunn/fzf.vim',
		'https://github.com/mbbill/undotree',
		'https://github.com/neovim/nvim-lspconfig',
		'https://github.com/nvim-tree/nvim-tree.lua',
		'https://github.com/nvim-tree/nvim-web-devicons',
		'https://github.com/nvim-treesitter/nvim-treesitter',
		'https://github.com/oxfist/night-owl.nvim',
		'https://github.com/rafamadriz/friendly-snippets',
		{
			src = 'https://github.com/saghen/blink.cmp',
			version = vim.version.range("1.x"),
		},
	})
else
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
end
require('plugins')
