return {
  "stevearc/conform.nvim",
  keys = {
    {
      "<leader>f",
      function()
        require("conform").format({ lsp_fallback = true })
      end,
      mode = { "n", "v" },
      desc = "Format file or range",
    },
  },
  opts = {
    log_level = vim.log.levels.DEBUG,
    formatters = {
      erb_format = {
        command = "bundle",
        args = { "exec", "erb-format", "$FILENAME" },
      }
    },
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "black" },
      javascript = { "eslint_d", "prettier" },
      typescript = { "eslint_d", "prettier" },
      javascriptreact = { "eslint_d", "prettier" },
      typescriptreact = { "eslint_d", "prettier" },
      ruby = { "rubocop" },
      eruby = { "erb_format" },
      json = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
      markdown = { "prettier" },
      svelte = { "prettier" },
    },
    format_on_save = false,
  },
}
