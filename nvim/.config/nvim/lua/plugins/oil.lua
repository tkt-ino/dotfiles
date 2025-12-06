return {
	'stevearc/oil.nvim',
	---@module 'oil'
	---@type oil.SetupOpts

	lazy = false,
	opts = {
		default_file_explorer = true,
	},
	keys = {
		{ "<leader>e", mode = { "n" }, ":Oil<cr>", silent = true },
	},
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
