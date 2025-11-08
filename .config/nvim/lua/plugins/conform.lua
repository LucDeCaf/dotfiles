return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		local web_settings = { "prettierd", 'prettier', stop_after_first = true }

		conform.setup({
			formatters_by_ft = {
				javascript = web_settings,
				typescript = web_settings,
				javascriptreact = web_settings,
				typescriptreact = web_settings,
				html = web_settings,
				css = web_settings,
				json = web_settings,
				yaml = web_settings,
				markdown = web_settings,
				lua = { "stylua" },
				rust = { "rustfmt" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			},
		})

		vim.keymap.set({ 'n', 'v' }, "<leader>mp", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end, { desc = "Format file or range in visual mode" })
	end
}
