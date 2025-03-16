return {
  {
    "folke/todo-comments.nvim",
    opts = {
      highlight = {
        keyword = "bg",
        -- 修改此行（新增括号匹配部分）
        pattern = [[.*<(KEYWORDS)[\([a-zA-Z]*\)]*:]], -- Vim 正则（允许括号内容）
        -- 其他保持原样...
      },
      search = {
        -- 修改此行（新增括号匹配部分）
        pattern = [[\b(KEYWORDS)\([^)]*\):]], -- ripgrep 正则（允许括号内容）
        -- 其他保持原样...
      },
    },
  },
}
