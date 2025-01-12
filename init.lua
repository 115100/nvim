-- essential options
vim.o.hidden = true
vim.o.number = true         -- line numbers
vim.o.showcmd = true        -- show current command
vim.o.undofile = true       -- persistent undo
vim.o.relativenumber = true -- nk, nj
vim.o.completeopt = "menuone,noselect"

vim.o.mouse = ''
vim.o.syntax = 'on' -- enable syntax highlighting

vim.o.colorcolumn = '80'
vim.o.scrolloff = 5
vim.o.updatetime = 300

-- search options
vim.o.ignorecase = true
vim.o.smartcase = true

vim.cmd("colorscheme elflord")

-- expand tabs for silly languages
vim.api.nvim_create_autocmd({ 'FileType' }, {
	pattern = { 'ada', 'bzl', 'cabal', 'groovy', 'haskell', 'python', 'yaml' },
	callback = function()
		vim.bo.expandtab = true
	end
})
-- fix stupid indentation problems with bazel/yaml
vim.api.nvim_create_autocmd({ 'FileType' }, {
	pattern = { 'bazel' },
	callback = function()
		vim.bo.ts = 4
		vim.bo.sts = 4
	end
})
vim.api.nvim_create_autocmd({ 'FileType' }, {
	pattern = { 'yaml', 'yml' },
	callback = function()
		vim.bo.ts = 2
		vim.bo.sts = 2
	end
})

require('plug')
require('remaps')
