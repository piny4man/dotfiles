local lsp_zero = require('lsp-zero')

local options = {
    server = {
        on_attach = lsp_zero.on_attach,
        capabilities = lsp_zero.capabilities,
    }
}

require('rust-tools').setup(options)
