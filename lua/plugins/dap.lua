return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "theHamsta/nvim-dap-virtual-text",
    "suketa/nvim-dap-ruby",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    require("dap-ruby").setup()
    require("nvim-dap-virtual-text").setup()

    dap.configurations.ruby = vim.list_extend(dap.configurations.ruby or {}, {
      {
        type = "ruby",
        name = "Attach to Rails",
        request = "attach",
        localfs = true,
        host = "127.0.0.1",
        port = 38698,
      },
    })

    dapui.setup()

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
    vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Continue" })
    vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "Step into" })
    vim.keymap.set("n", "<leader>do", dap.step_over, { desc = "Step over" })
    vim.keymap.set("n", "<leader>dO", dap.step_out, { desc = "Step out" })
    vim.keymap.set("n", "<leader>dt", dap.terminate, { desc = "Terminate" })
    vim.keymap.set("n", "<leader>du", dapui.toggle, { desc = "Toggle UI" })
    vim.keymap.set("n", "<leader>dr", dap.repl.open, { desc = "Open REPL" })
  end,
}
