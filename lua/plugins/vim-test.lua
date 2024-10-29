return {
  "vim-test/vim-test",
  dependencies = {
    "preservim/vimux"
  },
  config = function()
    vim.keymap.set("n", "<leader>t", ":TestNearest<CR>", {desc="TestNearest"})
    vim.keymap.set("n", "<leader>T", ":TestFile<CR>", {desc="TestFile"})
    vim.keymap.set("n", "<leader>a", ":TestSuite<CR>", {desc="TestSuite"})
    vim.keymap.set("n", "<leader>l", ":TestLast<CR>", {desc="TestLast"})
    vim.keymap.set("n", "<leader>g", ":TestVisit<CR>", {desc="TestVisit"})
    vim.cmd("let test#strategy = 'vimux'")
  end,
}


