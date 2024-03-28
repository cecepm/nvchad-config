require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- just for example, nvchad already have shortcut for formatting file, <Leader>fm
--
-- map("n", "<A-f>", function()
--   vim.lsp.buf.format { async = true }
-- end, { desc = "LSP Format"}
-- )

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
