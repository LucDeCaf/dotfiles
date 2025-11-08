-- terminal
vim.keymap.set("n", "<leader>Th", "<cmd>vsp term://zsh<CR>i", { desc = "Open terminal left of buffer" })
vim.keymap.set("n", "<leader>Tj", "<cmd>sp term://zsh<CR><C-w>Ri", { desc = "Open terminal above buffer" })
vim.keymap.set("n", "<leader>Tk", "<cmd>sp term://zsh<CR>i", { desc = "Open terminal below buffer" })
vim.keymap.set("n", "<leader>Tl", "<cmd>vsp term://zsh<CR><C-w>Ri", { desc = "Open terminal right of buffer" })
vim.keymap.set("n", "<leader>/", ":nohl<CR>", { silent = true, desc = "Clear search highlighting" })
vim.keymap.set("t", "<C-Space>", "<C-\\><C-n>", { desc = "Enter normal mode" })

-- lsp
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })

-- file navigation
vim.keymap.set("n", "<leader><leader>", "<C-^>", { desc = "Jump to previous buffer" })

-- split navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Focus left pane" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Focus down pane" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Focus up pane" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Focus right pane" })

-- remaps
vim.keymap.set("n", ";", ":")
vim.keymap.set("n", ":", ";")
