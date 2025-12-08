require 'nvim-tree'.setup()

vim.keymap.set('n', '<leader>e', require 'nvim-tree.api'.tree.toggle, { noremap = true })
