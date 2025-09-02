-- https://github.com/echasnovski/mini.indentscope
--
-- Filename: ~/github/dotfiles-latest/neovim/neobean/lua/plugins/mini-indentscope.lua
-- ~/github/dotfiles-latest/neovim/neobean/lua/plugins/mini-indentscope.lua
--
-- This plugins shows you a vertical colored line that allows you to see the
-- scope of your indentations

return {
  "nvim-mini/mini.indentscope",
  version = false, -- wait till new 0.7.0 release to put it back on semver
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    -- symbol = "▏",
    symbol = "│",
    options = { try_as_border = true },
  },
  config = function(_, opts)
    opts.draw = {
      animation = require('mini.indentscope').gen_animation.none(),
      delay = 0,
    }
    require('mini.indentscope').setup(opts)
    
    -- Set current scope color to lighter gray
    vim.cmd('highlight MiniIndentscopeSymbol guifg=#6a6a6a')
  end,
  init = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "help",
        "alpha",
        "dashboard",
        "neo-tree",
        "Trouble",
        "trouble",
        "lazy",
        "mason",
        "notify",
        "toggleterm",
        "lazyterm",
      },
      callback = function()
        vim.b.miniindentscope_disable = true
      end,
    })
  end,
}
