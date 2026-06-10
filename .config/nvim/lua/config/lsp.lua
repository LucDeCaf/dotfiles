local lsp = {
	-- Lua
	lua_ls = {
		cmd = { "lua-language-server" },
		filetypes = { "lua" },
		root_markers = { ".luarc.json", ".git" },
		settings = { Lua = { diagnostics = { globals = { "vim" } } } },
	},

	-- Rust
	rust_analyzer = {
		cmd = { "rust_analyzer" },
		filetypes = { "rust" },
		root_markers = { "cargo.toml", ".git" },
	},

	-- Zig
	zls = {
		cmd = { "zls" },
		filetypes = { "zig" },
		root_markers = { "build.zig", ".git" },
	},
}

-- Load configurations
for key, config in pairs(lsp) do
	vim.lsp.config(key, config)
	vim.lsp.enable(key)
end
