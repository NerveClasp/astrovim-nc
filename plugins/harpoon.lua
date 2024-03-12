return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>a", function() require("harpoon"):list():append() end, desc = "Append to harpoon" },
    {
      "<C-e>",
      function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end,
      desc = "Open harpoon",
    },
    { "<C-a>", function() require("harpoon"):list():select(1) end, desc = "harpoon switch to 1" },
    { "<C-s>", function() require("harpoon"):list():select(2) end, desc = "harpoon switch to 2" },
    { "<C-d>", function() require("harpoon"):list():select(3) end, desc = "harpoon switch to 3" },
    { "<C-f>", function() require("harpoon"):list():select(4) end, desc = "harpoon switch to 4" },
    { "<C-A-p>", function() require("harpoon"):list():prev() end, desc = "harpoon previous" },
    { "<C-A-n>", function() require("harpoon"):list():next() end, desc = "harpoon next" },
  },
  init = function()
    local harpoon = require "harpoon"
    ---@diagnostic disable-next-line: missing-parameter
    harpoon.setup()
  end,
}
