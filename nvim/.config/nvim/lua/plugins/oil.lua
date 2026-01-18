return {
	'stevearc/oil.nvim',
	---@module 'oil'
	---@type oil.SetupOpts

	opts = {},
	keys = {
		{ "<leader>e", mode = { "n" }, ":Oil --float<cr>", silent = true },
	},
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
