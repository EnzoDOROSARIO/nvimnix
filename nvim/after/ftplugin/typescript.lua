local lspconfig = require('lspconfig')

lspconfig.tsserver.setup {
  on_attach = require('user.lsp').make_on_attach(),
  capabilities = require('user.lsp').make_client_capabilities(),
}

