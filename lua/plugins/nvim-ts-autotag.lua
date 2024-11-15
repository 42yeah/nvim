return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      highlight = {
        enable = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-S-V>",
          node_incremental = "<C-S-V>",
          scope_incremental = false,
          node_decremental = "<BS>",
        },
      },
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "svelte",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },

  {
    "windwp/nvim-ts-autotag",
    ft = {
      "vue",
      "xml",
      "svelte",
    },
    enabled = true,
    config = function()
      require("nvim-ts-autotag").setup({
        aliases = {
          ["svelte"] = "html",
        },
      })
    end,
  },
}
