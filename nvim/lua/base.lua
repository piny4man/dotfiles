vim.opt.swapfile = false

-- Show relative line numbers
vim.opt.number = true
vim.opt.rnu = true

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

