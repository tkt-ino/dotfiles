return {
	'chomosuke/typst-preview.nvim',
	ft = 'typst',
	version = '1.*',
	opts = {
		port = 8000,
	}, -- lazy.nvim will implicitly calls `setup {}`
}
