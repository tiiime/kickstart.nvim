return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    if vim.g.theme == "catppuccin" then
      vim.cmd.colorscheme 'catppuccin-latte'
    end
  end
}
