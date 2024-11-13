return {
  "windwp/nvim-ts-autotag",
  ft = {
    "vue",
    "xml",
    "svelte",
  },
  enabled = false, -- TODO: handle this later
  config = function()
    require("nvim-ts-autotag").setup({
      aliases = {
        ["svelte"] = "html",
        ["ets"] = "js",
      },
    })
  end,
}
