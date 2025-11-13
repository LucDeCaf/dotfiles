vim.keymap.set("n", "<leader>rl", "<cmd>source $HOME/.config/nvim/init.lua<CR>", { desc = "Reload Neovim config" })

vim.keymap.set("n", "<leader>Th", "<cmd>vsp term://zsh<CR>i", { desc = "Open terminal left of buffer" })
vim.keymap.set("n", "<leader>Tj", "<cmd>sp term://zsh<CR><C-w>Ri", { desc = "Open terminal above buffer" })
vim.keymap.set("n", "<leader>Tk", "<cmd>sp term://zsh<CR>i", { desc = "Open terminal below buffer" })
vim.keymap.set("n", "<leader>Tl", "<cmd>vsp term://zsh<CR><C-w>Ri", { desc = "Open terminal right of buffer" })
vim.keymap.set("n", "<leader>/", "<cmd>nohl<CR>", { silent = true, desc = "Clear search highlighting" })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Focus left pane" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Focus down pane" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Focus up pane" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Focus right pane" })

vim.keymap.set("t", "<C-Space>", "<C-\\><C-n>", { desc = "Enter normal mode" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set("n", "<leader><leader>", "<C-^>", { desc = "Jump to previous buffer" })
vim.keymap.set("n", "<leader>e", "<cmd>Oil<CR>", { desc = "Open Oil file explorer" })
vim.keymap.set("n", "<leader>ll", "<cmd>Lazy<CR>", { desc = "Open Lazy" })
vim.keymap.set("n", "<leader>mn", "<cmd>Mason<CR>", { desc = "Open Mason" })
vim.keymap.set({ "n", "v" }, "gd", "<C-]>", { desc = "Go to definition" })

vim.keymap.set({ "n", "v", "x" }, "<leader>y", '"+y', { desc = "Yank to system clipboard" })
vim.keymap.set({ "n", "v", "x" }, "<leader>d", '"+d', { desc = "Delete to system clipboard" })
vim.keymap.set({ "n", "v", "x" }, "<leader>p", '"+p', { desc = "Paste from system clipboard" })

vim.keymap.set("n", ";", ":")
vim.keymap.set("n", ":", ";")

vim.keymap.set({ "n", "v" }, "<leader>in", function()
	vim.lsp.buf.hover({
		silent = false,
		width = 80,
	})
end, { desc = "Inspect symbol using LSP" })
