return {
	'stevearc/oil.nvim',
	opts = {
		view_options = {
			show_hidden = true,
		},
	},
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
