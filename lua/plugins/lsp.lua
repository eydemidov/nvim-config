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

    local lspconfig = require("lspconfig")

    lspconfig.lua_ls.setup({})
    lspconfig.ts_ls.setup({
      capabilities = vim.lsp.protocol.make_client_capabilities(),
      on_attach = function(client, bufnr)
        client.server_capabilities.workspace = {
          didChangeWatchedFiles = {
            dynamicRegistration = true,
          },
        }
      end,
    })
    lspconfig.pyright.setup({})
    
    lspconfig.ruby_lsp.setup({
      cmd = { vim.fn.expand("~/.rbenv/shims/ruby-lsp") },
    })
    
    lspconfig.svelte.setup({})

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

