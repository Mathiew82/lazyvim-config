return {
  {
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    keys = {
      {
        "<leader>rn",
        function()
          return ":IncRename " .. vim.fn.expand("<cword>")
        end,
        desc = "Incremental rename (refactor)",
        mode = "n",
        noremap = true,
        expr = true,
      },
    },
    config = true,
  },
  {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    keys = {
      {
        "<leader>r",
        function()
          require("refactoring").select_refactor({
            show_success_message = true,
          })
        end,
        desc = "Refactoring options",
        mode = "v",
        noremap = true,
        silent = true,
        expr = false,
      },
    },
    opts = {},
  },
}
