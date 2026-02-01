return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "typescript",
        "tsx",
        "javascript",
        "html",
        "css",
        "json",
        "markdown",
        "bash",
        "c_sharp",
        "yaml",
        "powershell"
      },
      auto_install = true,
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    })
  end,
}
