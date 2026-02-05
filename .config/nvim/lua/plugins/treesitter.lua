return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require('nvim-treesitter.config').setup({
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            }
        })
    end
}
