return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls", "ts_ls", "pyright", "svelte" },
    })

    vim.lsp.config("lua_ls", {})
    vim.lsp.config("ts_ls", {
      capabilities = vim.lsp.protocol.make_client_capabilities(),
      on_attach = function(client, bufnr)
        client.server_capabilities.workspace = {
          didChangeWatchedFiles = {
            dynamicRegistration = true,
          },
        }
      end,
    })
    vim.lsp.config("pyright", {})

    vim.lsp.config("ruby_lsp", {
      cmd = { vim.fn.expand("~/.rbenv/shims/ruby-lsp") },
    })

    vim.lsp.config("svelte", {})

    vim.lsp.config("zls", {
      cmd = { "zls" },
      filetypes = { "zig", "zir" },
      root_markers = { "zls.json", ".git" },
      settings = {
        zls = {
          semantic_tokens = "partial",
        },
      },
    })
    vim.lsp.enable("zls")

    vim.keymap.set("n", "gd", vim.lsp.buf.definition)
    vim.keymap.set("n", "K", vim.lsp.buf.hover)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
    vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
    vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)
  end,
}

