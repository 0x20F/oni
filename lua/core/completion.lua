--
--
--  ██████╗ ██████╗ ███╗   ███╗██████╗ ██╗     ███████╗████████╗██╗ ██████╗ ███╗   ██╗
-- ██╔════╝██╔═══██╗████╗ ████║██╔══██╗██║     ██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║
-- ██║     ██║   ██║██╔████╔██║██████╔╝██║     █████╗     ██║   ██║██║   ██║██╔██╗ ██║
-- ██║     ██║   ██║██║╚██╔╝██║██╔═══╝ ██║     ██╔══╝     ██║   ██║██║   ██║██║╚██╗██║
-- ╚██████╗╚██████╔╝██║ ╚═╝ ██║██║     ███████╗███████╗   ██║   ██║╚██████╔╝██║ ╚████║
--  ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚══════╝╚══════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝
--
--




-- Setup nvim-cmp
local cmp = require 'cmp'
local lspkind = require 'lspkind'


cmp.setup({
    -- Add icons and all the nice things
    -- with lspkind
    formatting = {
        format = lspkind.cmp_format({ with_text = true, maxwidth = 50 })
    },
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
-- Add/Configure language servers here
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local lsp = require 'lspconfig'
lsp.tsserver.setup { capabilities = capabilities }
lsp.rust_analyzer.setup { capabilities = capabilities }



-- Initialize easy installer
local lsp_installer = require 'nvim-lsp-installer'

-- Automatically setup newly installed server
-- for the file that's currently opened
lsp_installer.on_server_ready(function(server)
    local opts = { capabilities = capabilities }

    server:setup(opts)
    vim.cmd [[ do User LspAttachBuffers ]]
end)

