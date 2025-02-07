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

-- Reenable swapfile prompt when the swapfile is owned by a running Nvim process
vim.api.nvim_clear_autocmds({ group = 'nvim_swapfile' })

vim.api.nvim_create_autocmd({ 'FileType' }, {
	pattern = { 'tf', 'yaml', 'yml' },
	callback = function()
		vim.bo.expandtab = true
		vim.bo.sts = 2
		vim.bo.shiftwidth = 2
	end
})

require('plug')
require('remaps')
