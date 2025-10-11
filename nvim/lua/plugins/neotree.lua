local function position_mode()
  local screen_width = vim.opt.columns:get()
  if screen_width <= 80 then
    return "current"
  else
    return "float"
  end
end

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle Neo-tree" },
  },
  lazy = true,
  cmd = "Neotree",
  opts = {
    popup_border_style = "",
    close_if_last_window = false,
    window = {
      position = position_mode(),
      width = 35,
    },
    filesystem = {
      hide_dotfiles = true,
    },
  },
}
