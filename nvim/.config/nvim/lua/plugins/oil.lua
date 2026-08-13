return {
	'stevearc/oil.nvim',
	opts = {},
	keys = {
		{
			"<leader>e",
			mode = { "n" },
			function()
				require("oil").toggle_float()
			end,
			silent = true
		},
	},
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
