return {
  "projekt0n/github-nvim-theme",
  lazy = false,
  priority = 1000,
  config = function()
    require("github-theme").setup({
      options = {
        theme_style = "dark",
      }
    })
    vim.cmd("colorscheme github_dark")
  end,
}
