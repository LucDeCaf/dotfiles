require("ts-installer").setup({
	grammars = {
		svelte = {
			url = "https://github.com/tree-sitter-grammars/tree-sitter-svelte",
			files = { "src/parser.c", "src/scanner.c" },
		},
	},
})
