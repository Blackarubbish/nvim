require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 99
vim.o.relativenumber = true





-- 左侧符号
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  -- 在输入模式下也更新提示，设置为 true 也许会影响性能
  update_in_insert = true,
})
local signs = {
  Error = " ",   -- 错误
  Warn = " ",    -- 警告
  Hint = " ",    -- 提示
  Info = " ",    -- 信息
  Debug = " ",   -- 调试
  Trace = "✎ ",   -- 跟踪
}
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

