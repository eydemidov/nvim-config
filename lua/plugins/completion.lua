return {
  "saghen/blink.cmp",
  dependencies = "rafamadriz/friendly-snippets",
  version = "*",
  opts = {
    keymap = {
      preset = "none",
      ["<Tab>"] = {
        function(cmp)
          local line = vim.api.nvim_get_current_line()
          local col = vim.api.nvim_win_get_cursor(0)[2]
          local before_cursor = string.sub(line, 1, col)
          if before_cursor:match("%S$") then
            return cmp.show()
          end
        end,
        "select_next",
        "fallback"
      },
      ["<S-Tab>"] = { "select_prev", "fallback" },
      ["<CR>"] = { "accept", "fallback" },
      ["<Esc>"] = { "hide", "fallback" },
      ["Down"] = { "snippet_forward", "fallback" },
      ["Up"] = { "snippet_backward", "fallback" },
    },
    completion = {
      menu = { auto_show = false },
    },
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = "mono"
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    signature = { enabled = true }
  },
  opts_extend = { "sources.default" }
}
