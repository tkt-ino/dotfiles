return {
	'akinsho/toggleterm.nvim',
	version = "*",
	config = function()
		require("toggleterm").setup {
			direction = 'horizontal',
			open_mapping = [[<c-\>]],
			shell = "/bin/zsh",
		}
		vim.api.nvim_create_autocmd("VimLeavePre", {
			callback = function()
				for _, term in pairs(require("toggleterm.terminal").get_all()) do
					term:shutdown()
				end
			end,
		})
	end
}
