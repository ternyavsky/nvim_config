return {
  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    "nvim-treesitter/nvim-treesitter-angular",
    "Jezda1337/nvim-html-css",
    enabled = true,
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      ensure_installed = {
        "bash",
        "rust",
        "html",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "regex",
        "toml",
        "html-css",
        "vim",
        "yaml",
        "svelte",
        "terraform",
        "hcl",
        "c",
      },
    },
  },
}
