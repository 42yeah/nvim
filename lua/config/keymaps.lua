-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

map("n", "<Leader><Space>", function()
  require("telescope").extensions.frecency.frecency({
    workspace = "CWD",
    cwd = require("lazyvim.util").root(),
  }, {
    desc = "Frecency (Root Dir)",
  })
end)

map("n", "<Leader>fr", function()
  require("telescope").extensions.frecency.frecency()
end)
