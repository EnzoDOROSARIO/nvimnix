local lsp = require('lspconfig')

lsp.denols.setup {
  on_attach = require('user.lsp').make_on_attach(),
  root_dir = lsp.util.root_pattern("deno.json", "deno.jsonc"),
}

lsp.ts_ls.setup {
  on_attach = require('user.lsp').make_on_attach(),
  capabilities = require('user.lsp').make_client_capabilities(),
  root_dir = lsp.util.root_pattern("package.json"),
  single_file_support = false
}
