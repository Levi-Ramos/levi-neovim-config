-- File: lua/plugins/lspconfig.lua

return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local mason_registry = require("mason-registry")

    -- Retrieve the installation path for vue-language-server if it exists in Mason
    local vue_language_server_path = mason_registry.get_package("vue-language-server"):get_install_path()
      .. "/node_modules/@vue/language-server"

    -- Configure tsserver with Vue TypeScript plugin
    lspconfig.tsserver.setup({
      init_options = {
        plugins = {
          {
            name = "@vue/typescript-plugin",
            location = vue_language_server_path,
            languages = { "vue" },
          },
        },
      },
      filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
    })

    -- Configure volar (Vue Language Server)
    lspconfig.volar.setup({})
  end,
}
