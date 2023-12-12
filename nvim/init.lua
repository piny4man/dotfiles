local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require("remaps")
require("base")

-- lazy.nvim setup
require("lazy").setup({
    spec = { import = "plugins" }
})
-- Custom configuration
require("custom.alpha_config")
require("custom.better-escape_config")
require("custom.bufferline_config")
require("custom.catppuccin_config")
require("custom.comments_config")
require("custom.copilot_config")
require("custom.colorizer_config")
require("custom.fidget_config")
require("custom.git_config")
require("custom.illuminate_config")
require("custom.lspzero")
require("custom.lualine_config")
require("custom.move_config")
require("custom.nvim-cmp_config")
require("custom.nvim-tree_config")
require("custom.pairs_config")
require("custom.rust-tools_config")
require("custom.treesitter")
require("custom.trouble_config")
require("custom.whichkey")
