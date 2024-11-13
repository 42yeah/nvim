return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        layout_strategy = "vertical",
        extensions = {
          file_browser = {
            theme = "ivy",
          },
        },
      },
    },
  },

  {
    "nvim-telescope/telescope-frecency.nvim",
    config = function()
      require("telescope").load_extension("frecency")
    end,
    keys = {
      {
        "<leader><Space>",
        function()
          require("telescope").extensions.frecency.frecency({
            workspace = "CWD",
            cwd = require("lazyvim.util").root(),
          })
        end,
        desc = "Frecency (Root Dir)",
      },
    },
  },

  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
    keys = {
      {
        "<leader>fv",
        function()
          require("telescope").extensions.file_browser.file_browser({
            cwd = require("lazyvim.util").root(),
          })
        end,
        desc = "File browser (Root Dir)",
      },
    },
  },
}
