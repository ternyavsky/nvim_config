return {
  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    config = function()
      require("copilot").setup {
        suggestion = {
          auto_trigger = true, -- Показывать предложения автоматически
          keymap = {
            accept = "<Tab>", -- Принимать предложение через <Tab>
            next = "<C-j>", -- Следующее предложение
            prev = "<C-k>", -- Предыдущее предложение
            dismiss = "<C-l>", -- Отклонить предложение
          },
        },
        panel = { enabled = false }, -- Отключить панель Copilot
      }
    end,
  },
}
