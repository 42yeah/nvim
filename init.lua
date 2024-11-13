-- TODO: finish this later when we have time
-- require("config.user")  

if vim.g.neovide then
  -- vim.env.CFLAGS = "-std=c99"
  vim.o.guifont = "PragmataPro Mono Liga:h12"
  -- vim.env.HTTP_PROXY = "http://127.0.0.1:20122"
  -- vim.env.HTTPS_PROXY = "http://127.0.0.1:20122"
  vim.o.linespace = 5
end

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- lazy.nvim sets relative number - must nullify that
vim.o.number = true
vim.o.relativenumber = false
vim.keymap.set("i", "<C-BS>", "<C-w>", {silent = true, desc = "Delete from cursor to beginning word"})

