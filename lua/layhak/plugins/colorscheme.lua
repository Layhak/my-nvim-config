return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("catppuccin").setup({
				flavour = "mocha", -- set flavour to mocha
				transparent_background = false,
				term_colors = true,
				integrations = {
					nvimtree = true,
					telescope = true,
					treesitter = true,
					-- add more integrations if needed
				},
				highlight_overrides = {
					mocha = function(mocha)
						return {
							-- Override specific highlight groups here, for example:
							-- Normal = { bg = mocha.bg, fg = mocha.fg },
						}
					end,
				},
			})
			-- load the colorscheme here
			vim.cmd([[colorscheme catppuccin]])
		end,
	},
}
