return {
  {
    "nvim-treesitter/nvim-treesitter",
    tag = "v0.9.1",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "markdown",
        "markdown_inline",
        "python",
        "tsx",
        "javascript",
        "typescript",
        "css",
        "gitignore",
        "http",
        "svelte",
        "json",
        "sql",
        "vim",
        "lua",
        "xml",
      },
      query_linter = {
        enable = true,
        use_virtual_text = true,
        lint_events = { "BufWrite", "CursorHold" },
      },
    },
  },
}
