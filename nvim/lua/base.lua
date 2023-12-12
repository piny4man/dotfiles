vim.opt.swapfile = false

-- Show relative line numbers
vim.opt.number = true
vim.opt.rnu = false
vim.o.cursorline = true

-- Show ruler
vim.opt.ruler = true
vim.opt.cc = "120"

-- Search adjustments
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.smartcase = true
vim.opt.showmatch = true

-- Whitespace stuff
vim.opt.wrap = true
vim.opt.tabstop = 4
vim.cmd [[
augroup FileExtensionSettings
    autocmd!
    autocmd BufRead,BufNewFile *.js,*.ts,*.tsx,*.jsx,*.svelte,*.astro setlocal shiftwidth=2
    autocmd BufRead,BufNewFile *.html setlocal shiftwidth=2
augroup END
]]
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Identing
vim.opt.smartindent = true
vim.opt.smarttab = true
-- Restore cursor on exit
vim.cmd([[
  augroup RestoreCursorShapeOnExit
      autocmd!
      autocmd VimLeave * set guicursor=a:hor20
  augroup END
]])

-- Neovide custom configuration
if vim.g.neovide then
    vim.o.guifont = "FiraCode Nerd Font:h10"
end

-- Custom highlights
vim.cmd([[
    augroup illuminate_augroup
        autocmd!
        autocmd VimEnter * hi link illuminateWordText CursorLine
    augroup end
]])

-- Copilot custom cmp group
vim.api.nvim_set_hl(0, "CmpItemKindCopilot", { fg = "#6CC644" })

-- Custom Diagnostic
vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})
vim.o.updatetime = 500
vim.cmd [[ autocmd CursorHold * lua vim.diagnostic.open_float(nil, {focus=false, border="single"}) ]]
