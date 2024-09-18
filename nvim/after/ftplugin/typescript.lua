if vim.fn.executable('tsserver') ~= 1 then
  return
end

vim.lsp.start({
    name = 'TypeScript Language Server',
    cmd = { 'tsserver', '--stdio' },
    capabilities = require('user.lsp').make_client_capabilities(),
    root_dir = vim.fs.dirname(vim.fs.find({'package.json', '.git'}, { upward = true })[1])
})
