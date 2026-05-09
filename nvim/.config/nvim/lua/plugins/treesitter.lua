return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	-- enabled = false,
	opts = function(_, opts)
		require('nvim-treesitter').install { 'rust', 'python', 'c', 'lua', 'typst' }
		vim.api.nvim_create_autocmd('FileType', {
			pattern = { 'rust', 'python', 'c', 'lua', 'typst' },
			callback = function() vim.treesitter.start() end,
		})
	end
}
