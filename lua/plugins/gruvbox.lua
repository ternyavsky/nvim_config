local K = { "ellisonleao/gruvbox.nvim", priority = 1000, config = true }
K.config = function()
  require("gruvbox").setup {
    transparent_mode = true,
  }
end
return K
