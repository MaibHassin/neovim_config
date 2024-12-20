vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "

require("config.lazy")
require("catppuccin").setup({
    flavour = "mocha"
})
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

local config = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = {"lua", "javascript"},
    highlight = { enable = true },
    indent = { enable = true }
})

vim.cmd.colorscheme "catppuccin"
