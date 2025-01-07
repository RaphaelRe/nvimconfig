-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local options = { noremap = true, silent = false }

vim.api.nvim_set_keymap("i", "jf", "<Esc>", options)
vim.api.nvim_set_keymap("v", "jf", "<Esc>", options)

vim.api.nvim_set_keymap("n", "<Enter>", "o<ESC>", options)
-- vim.api.nvim_set_keymap("n", "<S-j>", "10j", options)
-- vim.api.nvim_set_keymap("n", "<S-k>", "10k", options)

-- Visual --
vim.keymap.set("v", "<C-c>", '"+y"', options)

-- Insert --
vim.api.nvim_set_keymap("i", "<C-e>", "<Esc>$a", options) -- jump to end of line when in insert mode
vim.api.nvim_set_keymap("i", "<C-a>", "<Esc>0i", options) -- jump to start of line when in insert mode
vim.api.nvim_set_keymap("i", "<C-DEL>", "<C-o>dw", options) -- delete full word in insert mode right of cursor

-- sendcode
vim.keymap.set("n", "<leader>I", function()
  require("nvim-python-repl").open_repl()
end, { desc = "Opens the REPL in a window split" })
vim.keymap.set("n", "<leader>i", function()
  require("nvim-python-repl").send_statement_definition()
end, { desc = "Send semantic unit to REPL" })
vim.keymap.set("v", "<leader>i", function()
  require("nvim-python-repl").send_visual_to_repl()
end, { desc = "Send visual selection to REPL" })
vim.keymap.set("n", "<F5>", function()
  require("nvim-python-repl").send_buffer_to_repl()
end, { desc = "Send entire buffer to REPL" })
vim.keymap.set("n", "<leader>e", function()
  require("nvim-python-repl").toggle_execute()
end, { desc = "Automatically execute command in REPL after sent" })

-- vim.keymap.set("n", "<leader>n", function()
--   require("nvim-python-repl").send_statement_definition()
-- end, { desc = "Send semantic unit to REPL" })
-- vim.keymap.set("v", "leader>n", function()
--   require("nvim-python-repl").send_visual_to_repl()
-- end, { desc = "Send visual selection to REPL" })
-- vim.keymap.set("n", "<leader>nr", function()
--   require("nvim-python-repl").send_buffer_to_repl()
-- end, { desc = "Send entire buffer to REPL" })
-- vim.keymap.set("n", "<leader>e", function()
--   require("nvim-python-repl").toggle_execute()
-- end, { desc = "Automatically execute command in REPL after sent" })
-- vim.keymap.set("n", "<leader>i", function()
--   require("nvim-python-repl").open_repl()
-- end, { desc = "Opens the REPL in a window split" })

-- vim.keymap.set("n", "", function() require('nvim-python-repl').toggle_vertical() end, { desc = "Create REPL in vertical or horizontal split"})

-- ClipboardHistory shortcuts
vim.keymap.set("n", "<leader>p", function()
  require("clipboard-history.ui").show_history()
end, { desc = "Choose from clipboard history" })

