-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "eslint", filetypes = { "javascript", "typescript", "typescriptreact" } }
-- }

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettier",
    filetypes = { "javascript", "typescript", "typescriptreact" },
  },
}

local has_words_before = function()
if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then return false end
local line, col = unpack(vim.api.nvim_win_get_cursor(0))
return col ~= 0 and vim.api.nvim_buf_get_text(0, line-1, 0, line-1, col, {})[1]:match("^%s*$") == nil
end
local on_tab = vim.schedule_wrap(function(fallback)
local cmp = require("cmp")
if cmp.visible() and has_words_before() then
cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
else
fallback()
end
end)
lvim.builtin.cmp.mapping["<Tab>"] = on_tab
