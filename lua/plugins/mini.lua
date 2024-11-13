-- Disable this
if true then
  return {}
end

return {
  "echasnovski/mini.nvim",
  version = false,
  enabled = false,
  opts = {
    modes = { insert = true, command = true, terminal = false },
    skip_ts = { "string" },
    skip_unbalanced = true,
    markdown = true,
  },
  config = function(_, opts)
    require("mini.pairs").setup(opts)
  end,
}
