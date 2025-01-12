-- essential options
vim.opt.hidden = true
vim.opt.number = true         -- line numbers
vim.opt.showcmd = true        -- show current command
vim.opt.undofile = true       -- persistent undo
vim.opt.relativenumber = true -- nk, nj
vim.opt.completeopt = { 'menuone', 'noselect' }

vim.opt.guicursor = '' -- https://github.com/neovim/neovim/wiki/FAQ#nvim-shows-weird-symbols-2-q-when-changing-modes
vim.opt.mouse = ''
vim.opt.syntax = 'on'  -- enable syntax highlighting

vim.opt.colorcolumn = '80'
vim.opt.scrolloff = 5
vim.opt.updatetime = 300

-- search options
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- expand tabs for silly languages
vim.api.nvim_create_autocmd({ 'FileType' },
	{ pattern = { 'ada', 'bzl', 'cabal', 'groovy', 'haskell', 'python', 'yaml' }, command = 'setlocal expandtab' })
-- fix stupid indentation problems with bazel/yaml
vim.api.nvim_create_autocmd({ 'FileType' },
	{ pattern = { 'bazel' }, command = 'setlocal ts=4 sts=4 sw=4 indentkeys-=<:>' })
vim.api.nvim_create_autocmd({ 'FileType' },
	{ pattern = { 'yaml', 'yml' }, command = 'setlocal ts=2 sts=2 sw=2 indentkeys-=0# indentkeys-=<:>' })
vim.cmd("execute 'source' $HOME.\"/.config/nvim/plugins.vim\"")
vim.cmd("execute 'source' $HOME.\"/.config/nvim/remaps.vim\"")
