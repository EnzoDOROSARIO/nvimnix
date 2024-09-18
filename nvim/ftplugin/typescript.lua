if vim.fn.executable('ts_ls') ~= 1 then
  return
end

vim.lsp.start({
    name = 'TypeScript Language Server',
    cmd = { 'ts_ls' },
    capabilities = require('user.lsp').make_client_capabilities(),
    root_dir = vim.fs.dirname(vim.fs.find({'package.json', '.git'}, { upward = true })[1])
})
