return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "eslint_d",
        "prettierd",
        "rust-analyzer",
        "graphql-language-service-cli",
        "prisma-language-server",
        "goimports",
        "gofumpt",
      },
    }
  }
}
