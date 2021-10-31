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


-- Initialize easy installer
local lsp_installer = require 'nvim-lsp-installer'
local servers = require 'nvim-lsp-installer.servers'

-- Install some servers before trying to set things up
-- Rust
local ok, rust_analyzer = servers.get_server('rust_analyzer')
if ok then
    if not rust_analyzer:is_installed() then
        rust_analyzer:install()
    end
end

-- Lua
local ok, sumneko_lua = servers.get_server('sumneko_lua')
if ok then
    if not sumneko_lua:is_installed() then
        sumneko_lua:install()
    end
end


-- Automatically setup newly installed server
-- for the file that's currently opened
lsp_installer.on_server_ready(function(server)
    local opts = { capabilities = capabilities }

    server:setup(opts)
    vim.cmd [[ do User LspAttachBuffers ]]
end)



-- Bootstrap the installed servers
local lsp = require 'lspconfig'
lsp.tsserver.setup { capabilities = capabilities }
lsp.sumneko_lua.setup { capabilities = capabilities }
lsp.rust_analyzer.setup { capabilities = capabilities }