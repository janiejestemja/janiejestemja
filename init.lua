vim.opt.rtp:prepend("~/.config/nvim/lazy/lazy.nvim")

require("lazy").setup({
    { "nvim-lualine/lualine.nvim", dependencies = "nvim-tree/nvim-web-devicons" },
    { "nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate" },
    { "catppuccin/nvim", name = "catppuccin" },
    { "nvim-tree/nvim-tree.lua", lazy = false, dependencies = "nvim-tree/nvim-web-devicons" },
})

require("nvim-tree").setup({})

require("lualine").setup({
    options = {
        icons_enabled = false,
        theme = "ayu_dark",
    }
})

require("nvim-treesitter.configs").setup({
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = true,
  },
})

vim.cmd.colorscheme("catppuccin-mocha")

vim.api.nvim_set_keymap("n", "<leader>tt", ":belowright split | resize 8 | terminal<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], {noremap = true})

vim.api.nvim_set_keymap("n", "<leader>to", ":NvimTreeOpen<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>tc", ":NvimTreeClose<CR>", {noremap = true, silent = true})

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.cursorline = true
