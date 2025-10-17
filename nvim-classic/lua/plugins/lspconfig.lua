-- https://github.com/neovim/nvim-lspconfig/blob/master/README.md
-- ## Important ⚠️
-- * `require('lspconfig')` (the legacy "framework" of nvim-lspconfig) [is **deprecated**](https://github.com/neovim/nvim-lspconfig/issues/3693) in favor of [vim.lsp.config](https://neovim.io/doc/user/lsp.html#lsp-config) (Nvim 0.11+).
--    * The [lspconfig.lua](./lua/lspconfig.lua) *module* will be dropped. Calls to `require('lspconfig')` will show a warning, which will later become an error.
-- * nvim-lspconfig itself is **NOT deprecated**. It provides server-specific configs.
--    * The configs live in the [lsp/](./lsp/) directory. `vim.lsp.config` automatically finds them and merges them with any local `lsp/*.lua` configs defined by you or a plugin.
--    * The old configs in [lua/lspconfig/](./lua/lspconfig/) are **deprecated** and will be removed.

return {
  "neovim/nvim-lspconfig",
  lazy = false,
}
