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
		"rest-nvim/rest.nvim",
		lazy = false,
		keys = {
			{ "<localleader>rr", "<cmd>Rest run<cr>", "Run request under the cursor" },
		},
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
