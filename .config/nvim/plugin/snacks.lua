local Snacks = require("snacks")
Snacks.setup({
	picker = {
		sources = {
			files = { hidden = true },
			grep = { hidden = true },
		},
	},
})

-- stylua: ignore start

vim.keymap.set({'n', 'v'}, '<leader>f', function() Snacks.picker.files() end)
vim.keymap.set({'n', 'v'}, '<leader>g', function() Snacks.picker.grep() end)

-- stylua: ignore end
