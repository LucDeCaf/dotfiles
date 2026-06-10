local blink = require("blink.cmp")

blink.setup({
	keymap = { preset = "super-tab" },
	fuzzy = { implementation = "prefer_rust_with_warning" },
})

local default_capabilities = vim.lsp.protocol.make_client_capabilities()
local blink_capabilities = blink.get_lsp_capabilities()
local capabilities = vim.tbl_deep_extend("force", default_capabilities, blink_capabilities)

vim.lsp.config("*", { capabilities = capabilities })
