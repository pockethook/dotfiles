return {
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		config = function()
			local lsp_zero = require('lsp-zero')

			lsp_zero.on_attach(function(client, bufnr)
				-- :help lsp-zero-keybindings for available actions
				lsp_zero.default_keymaps({buffer = bufnr})
			end)

			require('mason').setup({})
			require('mason-lspconfig').setup({
				ensure_installed = {
					'clangd',
					'pyright',
				},
				handlers = {
					lsp_zero.default_setup,
				},
			})
		end,
	},
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{
		'neovim/nvim-lspconfig',
		dependencies = {
			{'hrsh7th/cmp-nvim-lsp'},
		},
	},
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			{
				'neovim/nvim-lspconfig',
				'hrsh7th/cmp-buffer',
				'hrsh7th/cmp-path',
				'hrsh7th/cmp-cmdline',
				'L3MON4D3/LuaSnip',
				'saadparwaiz1/cmp_luasnip',
			},
		},
		config = function()
			local lsp_zero = require('lsp-zero')
			local cmp_action = lsp_zero.cmp_action()
			local cmp_format = lsp_zero.cmp_format()

			require('luasnip.loaders.from_lua').lazy_load()

			local cmp = require('cmp')
			-- cmp.setup({
			-- 	sources = {{
			-- 		{name = 'nvim_lsp'},
			-- 		{name = 'path'},
			-- 		{name = 'luasnip'},
			-- 	}, {
			-- 		{name = 'buffer'},
			-- 	}},
			-- 	mapping = cmp.mapping.preset.insert({
			-- 		['<Tab>'] = cmp_action.luasnip_supertab(),
			-- 		['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
			-- 	}),
			-- })

			cmp.setup.cmdline({'/', '?'}, {
				mapping = cmp.mapping.preset.cmdline(),
				sources = {
					{name = 'nvim_lsp'},
				},
			})

			cmp.setup.cmdline(':', {
				mapping = cmp.mapping.preset.cmdline(),
				sources = cmp.config.sources({
					{name = 'path'},
				}, {
					{name = 'cmdline'},
				})
			})
		end
	},
	{
		'L3MON4D3/LuaSnip',
		version = 'v2.*',
		build = 'make install_jsregexp',
		config = function()
			require('luasnip.loaders.from_lua').lazy_load({
				paths = '~/.config/nvim/lua/snippets',
			})
		end
	},
}
