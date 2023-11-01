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
    spec = { import = "plugins"}
})
require("lspzero")
require("treesitter")
require("whichkey")
require("bufferline-config")
require("lualine-config")
require("alpha-config")
require("git-config")
-- TODO Configure neo-tree

