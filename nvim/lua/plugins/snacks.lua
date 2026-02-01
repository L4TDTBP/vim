return {
  "folke/snacks.nvim",
  lazy = false,
  priority = 900,
  config = function()
    local snacks = require("snacks")

    snacks.setup({
      picker = {
        enabled = true,
      },
      lazygit = {
        enabled = true,
      },
    })

    -- keymaps für picker
    vim.keymap.set("n", "<leader>ff", function() snacks.picker.files() end, { desc = "find files" })
    vim.keymap.set("n", "<leader>fg", function() snacks.picker.grep() end, { desc = "grep in project" })
    vim.keymap.set("n", "<leader>fb", function() snacks.picker.buffers() end, { desc = "find buffers" })
    vim.keymap.set("n", "<leader>fh", function() snacks.picker.help() end, { desc = "find help" })
    vim.keymap.set("n", "<leader>fr", function() snacks.picker.recent() end, { desc = "recent files" })
    vim.keymap.set("n", "<leader>fs", function() snacks.picker.lsp_symbols() end, { desc = "find symbols" })
    vim.keymap.set("n", "<leader>fd", function() snacks.picker.diagnostics() end, { desc = "find diagnostics" })

    -- lazygit
    vim.keymap.set("n", "<leader>lg", function() snacks.lazygit() end, { desc = "lazygit"})
  end,
}
