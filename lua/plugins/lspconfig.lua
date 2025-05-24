return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enable = false },
      servers = {
        clangd = {
          cmd = { "clangd", "-j=4", "--background-index" },
          filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "hpp" },
          mason = false;
        },
        gopls = {
          mason = false,
        },
        -- lua_ls = { mason = false, },
        -- gofumpt = { mason = false, },
        -- goimports = { mason = false, },
      },
    },
  },
}
