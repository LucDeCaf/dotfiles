-- LSPs
local lsp = {
	-- Lua
	lua_ls = {
		cmd = { "lua-language-server" },
		filetypes = { "lua" },
		root_markers = { ".luarc.json", ".git" },
		settings = { Lua = { diagnostics = { globals = { "vim" } } } },
	},

	-- Kotlin
	kotlin_ls = {
		cmd = { "kotlin-ls", "--stdio" },
		single_file_support = true,
		filetypes = { "kotlin" },
		root_markers = { "build.gradle", "build.gradle.kts", "pom.xml" },
	},

	-- C#
	csharp_ls = {
		cmd = function(dispatchers, config)
			return vim.lsp.rpc.start({ "csharp-language-server" }, dispatchers, {
				cwd = config.cmd_cwd or config.root_dir,
				env = config.cmd_env,
				detached = config.detached,
			})
		end,
		root_markers = { "*.sln", "*.slnx", "*.csproj", ".git" },
		filetypes = { "cs" },
	},

	-- JS/TS
	ts_ls = {
		cmd = { "tsc", "--lsp", "--stdio" },
		filetypes = {
			"javascript",
			"typescript",
			"javascriptreact",
			"typescriptreact",
			"json",
		},
		root_markers = { "package.json", ".git" },
	},

	-- Rust
	rust_analyzer = {
		cmd = { "rust-analyzer" },
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
