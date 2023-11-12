vim.opt.termguicolors = true

require("bufferline").setup({
    options = {
        hover = {
            enabled = true,
            delay = 150,
            reveal = { 'close' }
        },
        offsets = {
            filetype = "NvimTree_1",
            text = "File Explorer",
            text_align = "center",
            separator = true,
        },
        diagnostics = "nvim_lsp",
    }
})
