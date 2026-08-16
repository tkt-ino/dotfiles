return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	cmd = "Telescope",
	opts = {
		defaults = {
			mappings = {
				i = {
					['<c-j>'] = "move_selection_next",
					['<c-k>'] = "move_selection_previous",
				}
			}
		},
	},
	keys = {
		{ "<leader>ff", mode = { "n" }, ":Telescope find_files<cr>", desc = "Telescope find files" },
	}
}
