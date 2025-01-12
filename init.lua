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
vim.api.nvim_create_autocmd({ 'FileType' },
	{ pattern = { 'ada', 'bzl', 'cabal', 'groovy', 'haskell', 'python', 'yaml' }, command = 'setlocal expandtab' })
-- fix stupid indentation problems with bazel/yaml
vim.api.nvim_create_autocmd({ 'FileType' },
	{ pattern = { 'bazel' }, command = 'setlocal ts=4 sts=4 sw=4 indentkeys-=<:>' })
vim.api.nvim_create_autocmd({ 'FileType' },
	{ pattern = { 'yaml', 'yml' }, command = 'setlocal ts=2 sts=2 sw=2 indentkeys-=0# indentkeys-=<:>' })

require('plug')
require('remaps')
