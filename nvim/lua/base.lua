-- netrw disable
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

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
    autocmd BufRead,BufNewFile *.js,*.ts,*.tsx,*.jsx,*.svelte,*.astro,*.json setlocal shiftwidth=2
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
    vim.o.guifont = "0xProto Nerd Font Mono:h7"
    vim.g.neovide_cursor_antialiasing = true -- Nevovide cursor Antialiasing
    vim.g.neovide_cursor_vfx_mode = "ripple" -- Neovide
end

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

-- Multiple cursors
vim.g.VM_theme = 'purplegray'

-- Autoclose tree on file open
vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
    callback = function()
        -- Delay execution to ensure it runs after the event loop
        vim.schedule(function()
            -- Check if nvim-tree is open
            if require("nvim-tree.view").is_visible() then
                -- Close nvim-tree
                require("nvim-tree.api").tree.close()
                -- Optionally, focus on the main window (the file opened)
                vim.cmd("wincmd p")
            end
        end)
    end,
})
