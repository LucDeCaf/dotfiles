return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		flavour = "mocha",
		no_italic = true,
		no_bold = true,
		compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
	},
}
