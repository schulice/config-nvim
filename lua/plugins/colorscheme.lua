return {
  -- add theme
  {
    -- "navarasu/onedark.nvim",
    "schulice/onedark.nvim",
    -- "rebelot/kanagawa.nvim",
    -- "Mofiqul/vscode.nvim",
    -- 'ellisonleao/gruvbox.nvim',
    -- "folke/tokyonight.nvim",
    priority = 1000,
    config = true,
    opts = {},
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
