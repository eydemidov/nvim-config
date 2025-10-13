return {
  {
    "ziglang/zig.vim",
    ft = "zig",
    init = function()
      vim.g.zig_fmt_parse_errors = 0
      vim.g.zig_fmt_autosave = 0
    end,
  },
  {
    "NTBBloodbath/zig-tools.nvim",
    ft = "zig",
    dependencies = {
      "akinsho/toggleterm.nvim",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("zig-tools").setup()
    end,
  },
}
