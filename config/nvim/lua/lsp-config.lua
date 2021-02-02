require'lspconfig'.angularls.setup{}
require'lspconfig'.bashls.setup{}
require'lspconfig'.dockerls.setup{}
require'lspconfig'.hls.setup{}
require'lspconfig'.jsonls.setup{}
require'lspconfig'.jdtls.setup{
  cmd = {'jdt.ls', '/usr/local/share/jdt.ls/workspaces/' .. vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')},
  root_dir = require'lspconfig'.util.root_pattern(".git", "pom.xml", "mvnw")
}
require'lspconfig'.perlls.setup{}
require'lspconfig'.r_language_server.setup{}
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.vimls.setup{}
require'lspconfig'.yamlls.setup{}
