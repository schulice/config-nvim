-- Check the lsp executable exists
if vim.fn.executable("protobuf-language-server") == 0 then
  return {}
end

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        protobuf_language_server = {
          -- server opts here
        },
      },
      setup = {
        protobuf_language_server = function(_, opts)
          local lspconfig = require("lspconfig")
          local configs = require("lspconfig.configs")
          local util = require("lspconfig.util")

          configs.protobuf_language_server = {
            default_config = {
              cmd = { "protobuf-language-server" },
              filetypes = { "proto", "cpp" },
              root_dir = util.root_pattern(".git"),
              single_file_support = true,
              settings = {},
            },
          }

          lspconfig.protobuf_language_server.setup(opts)
        end,
      },
    },
  },
}
