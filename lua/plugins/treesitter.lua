return {
  {
    "nvim-treesitter/nvim-treesitter",
    tag = "v0.9.1",
    opts = {
      ignore_install = { "help" },
      ensure_installed = {
        "html",
        "markdown",
        "markdown_inline",
        "python",
        "tsx",
        "javascript",
        "typescript",
        "css",
        "gitignore",
        "json",
        "vim",
        "lua",
      },
      query_linter = {
        enable = true,
        use_virtual_text = true,
        lint_events = { "BufWrite", "CursorHold" },
      },
    },
  },
}
