return {
	{
		--"tanvirtin/monokai.nvim",
		"njorquera98/monokai_remastered.nvim",
		opts = {
			colorscheme = "monokai",
		},
	},

	{
		"andweeb/presence.nvim",
		lazy = false,
	},

	{
		"vhyrro/luarocks.nvim",
		priority = 1000,
		config = true,
	},

	{
		"rest-nvim/rest.nvim",
		ft = "http",
		config = function()
			require("rest-nvim").setup({
				keybinds = {
					{
						"<localleader>rr",
						"<cmd>Rest run<cr>",
						"Run request under the cursor",
					},
					{
						"<localleader>rl",
						"<cmd>Rest run last<cr>",
						"Re-run latest request",
					},
				},
			})
		end,
	},

	{
		"kdheepak/lazygit.nvim",
		cmd = {
			"LazyGit",
			"LazyGitConfig",
			"LazyGitCurrentFile",
			"LazyGitFilter",
			"LazyGitFilterCurrentFile",
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		keys = {
			{ "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
		},
	},
}
