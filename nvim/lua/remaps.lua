vim.keymap.set("n", "<leader>cs", ":noh<CR>")
-- vim.keymap.set("n", "<leader>r", ":so %<CR>")

-- Explorer resize
vim.keymap.set("n", "<leader>t<Right>", ":NvimTreeResize +2<CR>")
vim.keymap.set("n", "<leader>t<Left>", ":NvimTreeResize -2<CR>")
vim.keymap.set("n", "<leader>tf", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>ts", ":NvimTreeFindFile<CR>")

-- Multi cursor replacement
vim.g.VM_maps = {
    ['Find Under'] = '<C-d>',
    ['Find Subword Under'] = '<C-d>'
}
