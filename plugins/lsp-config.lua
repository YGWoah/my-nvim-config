require("mason").setup()

require("mason-lspconfig").setup({
ensure_installed = {"tsserver"}
})

local nvim_lsp = require('lspconfig')
nvim_lsp.tsserver.setup({})
