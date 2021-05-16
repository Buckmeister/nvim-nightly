local on_attach = function(client, bufnr)

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    local function buf_set_option(...)
        vim.api.nvim_buf_set_option(bufnr, ...)
    end

    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local opts = {noremap = true, silent = true}
    buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>',
                   opts)
    buf_set_keymap('n', '<Leader>wa',
                   '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<Leader>wr',
                   '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<Leader>wl',
                   '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>',
                   opts)
    buf_set_keymap('n', '<Leader>gD',
                   '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '<Leader>e',
                   '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>',
                   opts)
    buf_set_keymap('n', 'Ä', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>',
                   opts)
    buf_set_keymap('n', 'ä', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>',
                   opts)
    buf_set_keymap('n', '<Leader>q',
                   '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
    buf_set_keymap('n', 'gc', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)

    -- Set some keybinds conditional on server capabilities
    if client.resolved_capabilities.document_formatting then
        buf_set_keymap("n", "<Leader>f",
                       "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
    elseif client.resolved_capabilities.document_range_formatting then
        buf_set_keymap("n", "<Leader>f",
                       "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
    end

    if client.resolved_capabilities.document_highlight then
        vim.api.nvim_exec([[
      hi LspReferenceRead cterm=bold ctermbg=Black guibg=Black
      hi LspReferenceText cterm=bold ctermbg=Black guibg=Black
      hi LspReferenceWrite cterm=bold ctermbg=Black guibg=Black
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)
    end
end

require'lspconfig'.angularls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require'lspconfig'.bashls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require'lspconfig'.ccls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require'lspconfig'.cssls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
-- require'lspconfig'.denols.setup {
--     on_attach = on_attach,
--     capabilities = capabilities
-- }
require'lspconfig'.dockerls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require'lspconfig'.flow.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require'lspconfig'.hls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require'lspconfig'.html.setup {capabilities = capabilities}
local pid = vim.fn.getpid()
local omnisharp_bin = "/usr/local/share/omnisharp/run"
require'lspconfig'.omnisharp.setup {
    cmd = {omnisharp_bin, "--languageserver", "--hostPID", tostring(pid)},
    on_attach = on_attach,
    capabilities = capabilities
}
require'lspconfig'.jsonls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require'lspconfig'.jdtls.setup {
    cmd = {
        'jdt.ls', '/usr/local/share/jdt.ls/workspaces/' ..
            vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
    },
    root_dir = require'lspconfig'.util.root_pattern(".git", "pom.xml", "mvnw"),
    on_attach = on_attach,
    capabilities = capabilities
}
require'lspconfig'.perlls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require'lspconfig'.pyright.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require'lspconfig'.r_language_server.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require'lspconfig'.rust_analyzer.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require'lspconfig'.texlab.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require'lspconfig'.tsserver.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require'lspconfig'.vimls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require'lspconfig'.vuels.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require'lspconfig'.yamlls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
