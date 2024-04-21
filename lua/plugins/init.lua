return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "configs.null-ls"
        end,
      },
    },
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "bash-language-server",
        "json-lsp",
        "yaml-language-server",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "bash",
        "python",
        "json",
        "go",
        "terraform",
      },
    },
  },

  -- Show trailing whitespace
  {
    "cappyzawa/trim.nvim",
    event = "User FilePost",
    config = function()
      require "configs.trim"
    end,
  },

  -- Show virtual column
  -- {
  --   "lukas-reineke/virt-column.nvim",
  --   event = "User FilePost",
  --   opts = {
  --      virtcolumn = "+1,120"
  --   }
  -- },

}
