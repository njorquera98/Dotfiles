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

	require("neo-tree").setup({
		window = {
			position = "right",
		},
	}),
}
