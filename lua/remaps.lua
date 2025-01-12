for _, v in pairs({ 'n', 'v', 'o' }) do
	vim.api.nvim_set_keymap(v, "<Up>", '', { noremap = true })
	vim.api.nvim_set_keymap(v, "<Down>", '', { noremap = true })
	vim.api.nvim_set_keymap(v, "<Left>", '', { noremap = true })
	vim.api.nvim_set_keymap(v, "<Right>", '', { noremap = true })
end
