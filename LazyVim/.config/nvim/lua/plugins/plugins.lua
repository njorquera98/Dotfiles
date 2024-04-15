return {
	{
		"tanvirtin/monokai.nvim",
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
			require("rest-nvim").setup({})
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
