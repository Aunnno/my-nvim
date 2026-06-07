local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },

  {
    "saghen/blink.cmp",
    version = "1.*",
    build = "cargo build --release",
    dependencies = { "rafamadriz/friendly-snippets" },
    opts_extend = { "sources.default" },
    ---@type blink.cmp.Config
    opts = {
      keymap = { preset = "super-tab" },
      appearance = { nerd_font_variant = "mono" },
      completion = { documentation = { auto_show = false } },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
    },
  },

  { "nvim-treesitter/nvim-treesitter", lazy = false, build = ":TSUpdate" },

  { "nvim-tree/nvim-web-devicons" },

  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      bigfile = { enabled = true },
      dashboard = { enabled = true },
      explorer = { enabled = true },
      indent = { enabled = true },
      input = { enabled = true },
      picker = {
        enabled = true,
        sources = {
          explorer = {
            layout = {
              layout = { width = 0.2 },
            },
          },
        },
      },
      notifier = { enabled = true, timeout = 3000 },
      quickfile = { enabled = true },
      scope = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
      terminal = {
        win = {
          height = 0.25,
        },
      },
    },
  },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },

  "nvim-lualine/lualine.nvim",
  "numToStr/Comment.nvim",
  "windwp/nvim-autopairs",
  "akinsho/bufferline.nvim",
  { "lewis6991/gitsigns.nvim" },

  {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
    },
    ft = "python",
    keys = { { ",v", "<cmd>VenvSelect<cr>", desc = "Select Python venv" } },
    opts = {
      options = {
        notify = true,
        fd_binary_name = vim.fn.expand("~/.local/bin/fd"),
      },
    },
  },
}

require("lazy").setup(plugins, {
  git = {
    timeout = 300,
  },
})
