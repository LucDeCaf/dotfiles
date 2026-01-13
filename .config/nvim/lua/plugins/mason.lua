return {
  "mason-org/mason-lspconfig.nvim",
  event = { "BufNewFile", "BufReadPre" },
  cmd = { "LspStart" },
  dependencies = {
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    -- tell Lua about the 'vim' global
    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          diagnostics = {
            globals = {
              "vim",
            },
          },
        },
      },
    })

    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "ts_ls",
        "rust_analyzer",
        "gopls",
      },
    })
  end,
}
