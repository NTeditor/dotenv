return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    direction = "float",
  },
  keys = {
    { "<leader>tf", "<cmd>ToggleTerm<cr>", desc = "Float terminal", mode = { "n", "t" } },
  },
}
