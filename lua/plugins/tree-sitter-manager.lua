require("tree-sitter-manager").setup({
	auto_install = true,
	noauto_install = {
		"c",
		"lua",
		"markdown",
		"query",
		"vim",
		"vimdoc",
	},
})
