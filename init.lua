vim.opt.rtp:prepend("~/.config/nvim/lazy/lazy.nvim")

require("lazy").setup({
    { "nvim-lualine/lualine.nvim", dependencies = "nvim-tree/nvim-web-devicons" },
    { "nvim-treesitter/nvim-treesitter", branch = "master", lazy = false, build = ":TSUpdate" },
    { "catppuccin/nvim", name = "catppuccin" },
    { "nvim-tree/nvim-tree.lua", lazy = false, dependencies = "nvim-tree/nvim-web-devicons" },
	{ "nvim-telescope/telescope.nvim", tag = "0.1.8", dependencies = { "nvim-lua/plenary.nvim" } },
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
    additional_vim_regex_highlighting = true,
  },
})

vim.cmd.colorscheme("catppuccin-mocha")

-- Mapping keys
vim.g.mapleader = "?"

-- NvimTree
vim.api.nvim_set_keymap("n", "<leader>to", ":NvimTreeOpen<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>tc", ":NvimTreeClose<CR>", {noremap = true, silent = true})

-- Terminal
vim.api.nvim_set_keymap("n", "<leader>tt", ":belowright split | resize 8 | terminal<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], {noremap = true})

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- Classic vim
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.cursorline = true
