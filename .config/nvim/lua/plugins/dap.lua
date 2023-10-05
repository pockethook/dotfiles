return {
	{
		'mfussenegger/nvim-dap',
		config = function()
			local dap = require('dap')
			dap.adapters.codelldb = {
				type = 'server',
				port = '${port}',
				executable = {
					command = '/usr/bin/codelldb',
					args = {'--port', '${port}'},
				},
			}
			dap.configurations.cpp = {
				{
					name = 'Launch',
					type = "codelldb",
					request = "launch",
					args = function()
						local args_string = vim.fn.input('Args: ')
						return vim.split(args_string, ' ')
					end,
					program = function()
						return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
					end,
					cwd = '${workspaceFolder}',
					stopOnEntry = false,
				},
			}
		end,
	},
	{
		'rcarriga/nvim-dap-ui',
		requires = {
			'mfussenegger/nvim-dap',
		},
		config = function()
			local dap = require('dap')
			local dapui = require("dapui")
			dapui.setup()

			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end
		end,
	},
	{
		'mfussenegger/nvim-dap-python',
		requires = {
			'mfussenegger/nvim-dap',
		},
		config = function()
			require('dap-python').setup()
		end,
	}
}
