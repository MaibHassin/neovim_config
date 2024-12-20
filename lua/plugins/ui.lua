return {
    -- Catppuccin coloscheme
    {
        "catppucinn/nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha"
            })
            vim.cmd([[colorscheme catppuccin]])
        end,
    },

    -- Treesitter configuration
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = true,
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "lua",
                    "javascript",
                    "python",
                },
                highlight = { enable = true },
                indent = { enable = true }
            })
        end,
    },
}

