-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "gopls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end
--
-- lspconfig.gopls.setup {
--   on_attach = function(client, bufnr)
--     on_attach(client, bufnr)
--     local function buf_set_keymap(...)
--       vim.api.nvim_buf_set_keymap(bufnr, ...)
--     end
--     -- 悬浮提示快捷键
--     buf_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
--
--     -- 签名帮助快捷键
--     buf_set_keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", { noremap = true, silent = true })
--   end,
--   on_init = on_init,
--   capabilities = capabilities,
-- }
--
-- typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}
