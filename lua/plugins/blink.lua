require('blink.cmp').setup({
	keymap = {
		preset = 'enter',

		-- Swap default behaviour for select/snippet
		['<TAB>'] = { 'select_next', 'fallback' },
		['<S-TAB>'] = { 'select_prev', 'fallback' },
		['<C-p>'] = { 'snippet_backward', 'fallback_to_mappings' },
		['<C-n>'] = { 'snippet_forward', 'fallback_to_mappings' },
	},

	completion = {
		documentation = { auto_show = true },
		list = {
			selection = {
				preselect = false,
			},
		},
	},

	snippets = { preset = 'luasnip' },

	sources = {
		default = { 'lsp', 'path', 'snippets', 'buffer' },
	},

	fuzzy = {
		implementation = 'prefer_rust_with_warning',
	},
})
