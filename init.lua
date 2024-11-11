require("user")

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- lazy.nvim sets relative number - must nullify that
vim.o.number = true
vim.o.relativenumber = false
