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
local swapfile_group
if vim.version.ge(vim.version(), '0.11.0') then
	swapfile_group = 'nvim.swapfile'
else
	swapfile_group = 'nvim_swapfile'
end
vim.api.nvim_clear_autocmds({ group = swapfile_group })

vim.api.nvim_create_autocmd({ 'FileType' }, {
	pattern = { 'hcl', 'terraform', 'yaml', 'yml' },
	callback = function()
		vim.bo.expandtab = true
		vim.bo.sts = 2
		vim.bo.shiftwidth = 2
	end
})

if vim.version.ge(vim.version(), '0.11.0') then
	vim.diagnostic.config({ virtual_text = true })
end

require('plug')
require('remaps')
