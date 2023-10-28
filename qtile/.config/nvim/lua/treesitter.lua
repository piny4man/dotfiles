require'nvim-treesitter.configs'.setup {
  ensure_installed = { "rust", "lua", "vim", "vimdoc", "query", "typescript", "javascript" },
  sync_install = false,
  auto_install = true,
  ignore_install = { "" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true },
  rainbow = {
      enable = true,
      extended_mode = true,
      max_file_lines = nil,
  }
}

