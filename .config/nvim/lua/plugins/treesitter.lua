return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	main = 'nvim-treesitter.configs',
	opts = {
		ensure_enabled = {
			'awk',
			'bash',
			'c',
			'cmake',
			'cpp',
			'css',
			'csv',
			'cuda',
			'diff',
			'dockerfile',
			'dot',
			'doxygen',
			'git_config',
			'git_rebase',
			'gitattributes',
			'gitcommit',
			'gitignore',
			'haskell',
			'html',
			'http',
			'javascript',
			'jq',
			'json',
			'latex',
			'lua',
			'markdown',
			'markdown_inline',
			'proto',
			'python',
			'sql',
			'ssh_config',
			'vimdoc',
			'xml',
			'yaml',
		},
		sync_install = false,
		auto_install = true,
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
		},
	},
}