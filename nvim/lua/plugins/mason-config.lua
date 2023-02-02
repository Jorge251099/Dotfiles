require("mason").setup({
	PATH = "prepend", -- "skip" seems to cause the spawning error
})
require("mason-lspconfig").setup()
