return {
	"windwp/nvim-ts-autotag",
	ft = {
		"vue",
		"xml",
		"svelte",
	},
	config = function()
		require("nvim-ts-autotag").setup({
			aliases = {
				["svelte"] = "html",
        ["ets"] = "js"
			},
		})
	end,
}
