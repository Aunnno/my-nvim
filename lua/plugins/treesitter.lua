require('nvim-treesitter').setup {
  ensure_installed = { "lua", "python", "bash", "json", "yaml", "c", "cpp" },
  auto_install = true,
  highlight = { enable = true },
  indent = { enable = true },
}