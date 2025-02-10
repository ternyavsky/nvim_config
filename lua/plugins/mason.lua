return {
  {
    "williamboman/mason.nvim",
    enabled = true,
    lazy = false,
    opts = {
      ensure_installed = {
        "shellcheck",
        "shfmt",
        "flake8",
        "cpplint",
      },
    },
  },
  -- {
  --   "williamboman/mason-lspconfig.nvim",
  --   enabled = true,
  --   lazy = false,
  --   opts = {
  --     ensure_installed = {
  --       "lua_ls",
  --       "bashls",
  --       "rust_analyzer",
  --       "docker_compose_language_service",
  --       "dockerls",
  --       "harper_ls",
  --       "html",
  --     },
  --   },
  -- },
  {
    "jay-babu/mason-null-ls.nvim",
    enabled = true,
    lazy = false,
    opts = {
      ensure_installed = {
        "ansible-lint",
        "shellcheck",
        "black",
        -- "pyright",
        "ruff",
        "markdownlint",
        "jq",
        "jsonlint",
        "yamlfmt",
        "yamllint",
        "sqlfmt",
        -- "rustfmt", -- Installed via rustup now
        -- "codespell"
      },
      on_attach = function(client, bufnr)
        -- Disable delay on formatting
        if client.server_capabilities.document_formatting then
          -- Formatting on save without delay
          vim.api.nvim_buf_set_keymap(
            bufnr,
            "n",
            "<leader>f",
            "<cmd>lua vim.lsp.buf.formatting_sync()<CR>",
            { noremap = true, silent = true }
          )
          -- Alternatively, auto-format on buffer write
          vim.cmd [[
          augroup FormatOnSave
            autocmd!
            autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil, 1000)
          augroup END
        ]]
        end
      end,
      -- Speed up formatting by increasing the timeout or removing debounce
      formatting_timeout = 1000, -- Timeout in milliseconds (adjust for faster response)
      debounce = 100, -- Small debounce to avoid multiple triggers
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    enabled = true,
    lazy = false,
    opts = {
      ensure_installed = {
        "bash",
        "python",
        "codelldb",
      },
    },
  },
}
