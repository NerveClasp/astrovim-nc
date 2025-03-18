-- if true then return {} end
-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "lua_ls",
        "arduino_language_server",
        "bashls",
        "cssls",
        "docker_compose_language_service",
        "dockerls",
        "emmet_ls",
        "graphql",
        "html",
        "rust_analyzer",
        "svelte",
        "tailwindcss",
        "taplo",
        -- add more arguments for adding more language servers
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        -- "prettier",
        "stylua",
        "codelldb",
        "commitlint",
        "delve",
        "gofumpt",
        "goimports",
        "gopls",
        -- "jsonls",
        "jsonlint",
        "luacheck",
        "prettierd",
        "chrome-debug-adapter",
        "go-debug-adapter",
        "js-debug-adapter",
        "shellcheck",
        -- "shellgarden",
        "stylelint",
        -- add more arguments for adding more null-ls sources
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        -- add more arguments for adding more debuggers
      })
    end,
  },
}
