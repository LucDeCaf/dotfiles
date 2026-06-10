-- Swap ';' and ':'
vim.keymap.set("n", ";", ":", { noremap = true })
vim.keymap.set("n", ":", ";", { noremap = true })

-- General
vim.keymap.set("n", "<leader><leader>", "<C-^>", { desc = "Jump to previous buffer" })
vim.keymap.set("n", "<leader>e", "<cmd>Oil<CR>", { desc = "Open Oil file explorer" })
vim.keymap.set({ "n", "v" }, "gd", "<C-]>", { desc = "Go to definition" })
vim.keymap.set("n", "<leader>/", "<cmd>nohl<CR>", { silent = true, desc = "Clear search highlighting" })

-- Terminal navigation
vim.keymap.set("t", "<C-Space>", "<C-\\><C-n>", { desc = "Enter normal mode" })
vim.keymap.set("n", "<leader>th", "<cmd>vsp term://zsh<CR>i", { desc = "Open terminal left of buffer" })
vim.keymap.set("n", "<leader>tj", "<cmd>sp term://zsh<CR><C-w>Ri", { desc = "Open terminal above buffer" })
vim.keymap.set("n", "<leader>tk", "<cmd>sp term://zsh<CR>i", { desc = "Open terminal below buffer" })
vim.keymap.set("n", "<leader>tl", "<cmd>vsp term://zsh<CR><C-w>Ri", { desc = "Open terminal right of buffer" })

-- Pane navigation
vim.keymap.set({ "n", "v" }, "<C-h>", "<C-w>h", { desc = "Focus left pane" })
vim.keymap.set({ "n", "v" }, "<C-j>", "<C-w>j", { desc = "Focus down pane" })
vim.keymap.set({ "n", "v" }, "<C-k>", "<C-w>k", { desc = "Focus up pane" })
vim.keymap.set({ "n", "v" }, "<C-l>", "<C-w>l", { desc = "Focus right pane" })
vim.keymap.set("n", "<C-Space>h", "<cmd>vsplit<CR>", { desc = "Open pane left" })
vim.keymap.set("n", "<C-Space>j", "<cmd>split<CR><C-w>j", { desc = "Open pane down" })
vim.keymap.set("n", "<C-Space>k", "<cmd>split<CR>", { desc = "Open pane up" })
vim.keymap.set("n", "<C-Space>l", "<cmd>vsplit<CR><C-w>l", { desc = "Open pane right" })

-- Move through wrapped lines naturally
vim.keymap.set({ "n", "v" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })
vim.keymap.set({ "n", "v" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
vim.keymap.set({ "n", "v" }, "$", "v:count == 0 ? 'g$' : '$'", { expr = true })
vim.keymap.set({ "n", "v" }, "0", "v:count == 0 ? 'g0' : '0'", { expr = true })

-- Clipboard
vim.keymap.set({ "n", "v", "x" }, "<leader>y", '"+y', { desc = "Yank to system clipboard" })
vim.keymap.set({ "n", "v", "x" }, "<leader>d", '"+d', { desc = "Delete and yank to system clipboard" })
vim.keymap.set({ "n", "v", "x" }, "<leader>p", '"+p', { desc = "Paste from system clipboard" })

-- LSP integration
vim.keymap.set("n", "<leader>ca", function()
	vim.lsp.buf.code_action()
end, { desc = "Code actions" })
vim.keymap.set("v", "<leader>ca", function()
	vim.lsp.buf.code_action()
end, { desc = "Code actions for selection" })
vim.keymap.set("n", "<Esc>", function()
	for _, win in ipairs(vim.api.nvim_list_wins()) do
		if vim.api.nvim_win_get_config(win).relative == "win" then
			vim.api.nvim_win_close(win, false)
		end
	end
end, { desc = "Close floating windows" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set({ "n", "v" }, "<leader>in", function()
	vim.lsp.buf.hover({
		silent = false,
		width = 80,
	})
end, { desc = "Inspect symbol" })
vim.keymap.set("n", "<leader>ie", vim.diagnostic.open_float, { desc = "Inspect error" })

vim.keymap.set(
	"n",
	"<leader>t2",
	"<cmd>set tabstop=2<CR><cmd>set shiftwidth=2<CR><cmd>echo 'Tab size is 2'<CR>",
	{ desc = "Set tab size to 2" }
)
vim.keymap.set(
	"n",
	"<leader>t4",
	"<cmd>set tabstop=4<CR><cmd>set shiftwidth=4<CR><cmd>echo 'Tab size is 4'<CR>",
	{ desc = "Set tab size to 4" }
)
