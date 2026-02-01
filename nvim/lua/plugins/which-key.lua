return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")

    wk.setup({
      delay = 300,
      icons = {
        breadcrumb = "»",
        separator = "➜",
        group = "+",
      },
      triggers = {
        { "<auto>", mode = "nxso" },
        { "s", mode = { "n", "v" } },
        { "g", mode = { "n", "v" } },
      },
    })

    -- named groups, for a better overview
    wk.add({
      { "<leader>f", group = "find" },
      { "<leader>d", group = "diagnostics" },
      { "<leader>c", group = "code" },
      { "<leader>r", group = "refactor" },
      { "<leader>l", group = "lazygit" },
      { "<leader>h", group = "git hunk" },
      { "s", group = "split" },
      { "sm", group = "move split" },
      { "g", group = "go to" },
      { "]", group = "next" },
      { "[", group = "previous" },
    })
  end,
}
