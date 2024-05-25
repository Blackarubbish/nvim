return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "tsx",
        "lua",
        "vim",
        "typescript",
        "javascript",
        "html",
        "css",
        "json",
        "graphql",
        "regex",
        "rust",
        "prisma",
        "markdown",
        "markdown_inline",
        "go",
        "gomod",
        "gowork",
        "gosum",
      },
      sync_install = false,
      auto_install = true,
      autotag = {
        enable = true,
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<enter>",
          node_incremental = "<enter>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    },
  },
}
