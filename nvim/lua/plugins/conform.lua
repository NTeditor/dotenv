return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      rust = { "rustfmt" },
      python = { "black" },
    },
    format_on_save = {
      timeout_ms = 100,
      lsp_format = "fallback",
    },
  },
  keys = {
    {
      "<leader>f",
      function()
        require("conform").format({ async = true, timeout_ms = 100, lsp_format = "fallback" })
      end,
      desc = "Format",
    },
  },
}
