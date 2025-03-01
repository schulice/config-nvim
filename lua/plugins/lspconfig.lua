return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enable = false },
      servers = {
        clangd = {
          filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "hpp" },
        },
      },
    },
  },
}
