return {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.3',
		dependencies = {
			'nvim-lua/plenary.nvim',
		}
	},
	{
		'nvim-telescope/telescope-file-browser.nvim',
		dependencies = {
			'nvim-telescope/telescope.nvim',
			'nvim-lua/plenary.nvim',
		}
	},
	{
		'nvim-telescope/telescope-fzf-native.nvim',
		build = 'make',
	},
}
