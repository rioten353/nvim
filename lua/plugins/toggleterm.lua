return {
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({})
      vim.keymap.set("n", "<leader>rt", ":ToggleTerm direction=float size=30<CR>")
    end,
  },
}
