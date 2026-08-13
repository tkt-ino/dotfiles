return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	-- enabled = false,
	opts = function(_, opts)
		local langs = { 'rust', 'python', 'c', 'lua', 'typst', 'typescript', 'tsx', 'javascript' }
		require('nvim-treesitter').install(langs)
		vim.api.nvim_create_autocmd('FileType', {
			pattern = langs,
			callback = function() vim.treesitter.start() end,
		})
	end
}
