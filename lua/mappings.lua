require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- It can be really annoying when you keep hitting the F1 key accidentally,
-- and the Help screen pops up. Here is a solution
-- https://vim.fandom.com/wiki/Disable_F1_built-in_help_key
map("n", "<F1>", "<nop>", { desc = "Press F1, but do nothing" })
map("i", "<F1>", "<nop>", { desc = "Press F1, but do nothing" })

-- Close Buffer (ALT+W)
map("n", "<A-w>", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "Buffer Close" })

-- just for example, nvchad already have shortcut for formatting file, <Leader>fm
--
-- map("n", "<A-f>", function()
--   vim.lsp.buf.format { async = true }
-- end, { desc = "LSP Format"}
-- )

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
