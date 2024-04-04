-- if true then return {} end

return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji", -- add cmp source as dependency of cmp
    },
    opts = function(_, opts)
      local cmp = require "cmp"

      opts.mapping["<C-y>"] = cmp.mapping.confirm { select = false } -- TJ made me do this

      opts.sources = cmp.config.sources {
        { name = "nvim_lsp", priority = 1000 },
        { name = "luasnip", priority = 750 },
        { name = "buffer", priority = 500 },
        { name = "path", priority = 250 },
        { name = "emoji", priority = 700 }, -- add new source
      }
    end,
  },
}
