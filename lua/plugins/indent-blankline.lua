return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = {
      char = "│",
      tab_char = "│",
    },
    scope = { enabled = false },
  },
  config = function(_, opts)
    require("ibl").setup(opts)
    -- Set permanent indent guides to the darker gray you wanted
    vim.cmd('highlight IblIndent guifg=#3a3a3a')
  end,
}