local K = {
  "rebelot/kanagawa.nvim",
}

K.config = function()
  require("kanagawa").setup {
    transparent = true,
    -- theme = "light",
  }
end
return K
