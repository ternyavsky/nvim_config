return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup {
      "*", -- Подключает для всех файлов
      css = { rgb_fn = true }, -- Включает поддержку rgb() и hsl()
      html = { names = true }, -- Поддержка именованных цветов
    }
  end,
}
