return {
	'saghen/blink.cmp',
	-- optional: provides snippets for the snippet source
	dependencies = {
		'L3MON4D3/LuaSnip',
	},

	-- use a release tag to download pre-built binaries
	version = '1.*',
	opts = {
		keymap = {
			preset = 'enter',
			['<c-j>'] = { 'select_next', 'fallback' },
			['<c-k>'] = { 'select_prev', 'fallback' },
		},
		cmdline = {
			keymap = {
				preset = 'inherit',
				['<Tab>'] = { 'show_and_insert_or_accept_single', 'select_next' },
			},
			completion = { menu = { auto_show = false } },
		},
		appearance = {
			nerd_font_variant = 'mono'
		},
		-- (Default) Only show the documentation popup when manually triggered
		completion = { documentation = { auto_show = true, auto_show_delay_ms = 500 } },

		-- Default list of enabled providers defined so that you can extend it
		-- elsewhere in your config, without redefining it, due to `opts_extend`
		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer' },
		},

		fuzzy = { implementation = "prefer_rust_with_warning" },
		snippets = { preset = "luasnip" },
	},
	opts_extend = { "sources.default" }
}
