vim.g.mapleader = ' '

local nest = require('nest')

nest.applyKeymaps {
	{ mode = 'i', {
		{ '<c-u>', '<cmd>lua require("luasnip.extras.select_choice")()<cr>' },
	}},
	{ mode = 'n', {
		{ '<c-h>', '<c-w>h' },
		{ '<c-j>', '<c-w>j' },
		{ '<c-k>', '<c-w>k' },
		{ '<c-l>', '<c-w>l' },
		{ '<c-p>', '<cmd>lua require("telescope.builtin").find_files()<cr>' },
		{ '<leader>', {
			{ 'w', ':w<cr>' },
			{ 'q', ':q<cr>' },
			{ 't', ':vs | term<cr>' },
			{ 'y', '"*y' },
			{ 'o', '<cmd>lua require("telescope.").extensions.file_browser.file_browser()<cr>' },
			{ 'h', '<c-w>h' },
			{ 'j', '<c-w>j' },
			{ 'k', '<c-w>k' },
			{ 'l', '<c-w>l' },
			{ 'H', '<c-w>H' },
			{ 'J', '<c-w>J' },
			{ 'K', '<c-w>K' },
			{ 'L', '<c-w>L' },
			{ 'a', '<cmd>lua require("telescope.builtin").live_grep()<cr>' },
			{ 'p', '<cmd>lua require("telescope.builtin").git_files()<cr>' },
			{ 'du', '<cmd>lua require("dapui").toggle()<cr>' },
			{ 'db', '<cmd>lua require("dap").toggle_breakpoint()<cr>' },
			{ 'dc', '<cmd>lua require("dap").continue()<cr>' },
			{ 'dn', '<cmd>lua require("dap").step_over()<cr>' },
			{ 'ds', '<cmd>lua require("dap").step_into()<cr>' },
			{ 'dbc', '<cmd>lua require("dap").set_breakpoint(vim.fn.input("Condition: "))<cr>' },
		}}
	}},
	{ mode = 't', {
		{ '<esc><esc>', [[<c-\><c-n>]] },
		{ '<c-h>', [[<c-\><c-n><c-w>h]] },
		{ '<c-j>', [[<c-\><c-n><c-w>j]] },
		{ '<c-k>', [[<c-\><c-n><c-w>k]] },
		{ '<c-l>', [[<c-\><c-n><c-w>l]] },
	}},
	{ mode = 'v', {
		{ '<leader>', {
			{ 'y', '"*y' },
		}}
	}},
}
