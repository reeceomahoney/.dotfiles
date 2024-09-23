return {
	"nvim-neorg/neorg",
	lazy = false,
	version = "*",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {},
				["core.concealer"] = {},
				["core.keybinds"] = {},
				["core.esupports.metagen"] = {
					config = {
						timezone = "implicit-local",
					},
				},
				["core.dirman"] = {
					config = {
						workspaces = {
							notes = "~/notes",
						},
						default_workspace = "notes",
					},
				},
			},
		})

		vim.wo.foldlevel = 99
		vim.wo.conceallevel = 2
	end,
	run = ":Neorg sync-parsers",
}
