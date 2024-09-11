return {
	{ "mfussenegger/nvim-dap" },
	{
		"mfussenegger/nvim-dap-python",
		ft = "python",
		dependencies = {
			"mfussenegger/nvim-dap",
			"nvim-neotest/nvim-nio",
		},
		config = function()
			local path = "/home/reece/.local/share/virtualenvs/locodiff-ed_9uOdR/bin/python"
			require("dap-python").setup(path)
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = {
			"mfussenegger/nvim-dap",
			"rcarriga/nvim-dap-ui",
		},
		config = function()
			local dap = require("dap")
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

	-- keymaps
	vim.keymap.set("n", "<leader>dp", "<cmd>DapToggleBreakpoint<CR>", { desc = "Toggle breakpoint" }), -- toggle breakpoint
	vim.keymap.set("n", "<leader>db", "<cmd>DapContinue<CR>", { desc = "Start debugging" }), -- start debugging
	vim.keymap.set("n", "<leader>dpr", function()
		require("dap-python").test_method()
	end, { desc = "Debug python file" }), -- debug python file
}
