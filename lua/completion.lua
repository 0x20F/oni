-- Setup nvim-cmp
local cmp = require 'cmp'


cmp.setup({
        sources = cmp.config.sources(
                {
                        { name = 'nvim_lsp' },
                },
                {
                        { name = 'buffer' }
                }
        )
})


-- Use buffer source for '/'.
cmp.setup.cmdline('/', {
        sources = {
                { name = 'buffer' }
        }
})


-- Use cmdline & path source for ':'
cmp.setup.cmdline(':', {
        sources = cmp.config.sources(
                {
                        { name = 'path' }
                },
                {
                        { name = 'cmdline' }
                }
        )
})


-- Setup lspconfig
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local lsp = require 'lspconfig'
lsp.tsserver.setup { capabilities = capabilities }


local lsp_installer = require 'nvim-lsp-installer'

lsp_installer.on_server_ready(function(server)
        local opts = {}

        server:setup(opts)
        vim.cmd [[ do User LspAttachBuffers ]]
end)
