local vim = vim

local execute = vim.api.nvim_command
local fn = vim.fn


-- Figure out if packer is already installed or not
-- Install it if it isn't
local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    execute('packadd packer.nvim')
end

vim.cmd('packadd packer.nvim')



-- Setup and install plugins
local packer = require('packer')
local util = require('packer.util')

packer.init({
    package_root = util.join_paths(fn.stdpath('data'), 'site', 'pack')
})

-- Startup and configure plugins
-- To install plugins run ':PackerCompile' and ':PackerInstall'
packer.startup(function()
    local use = use

    use 'nvim-treesitter/nvim-treesitter'
    use 'sheerun/vim-polyglot'

    --themes
    use 'rakr/vim-one'

    -- and a formatter too for good measure
    use {'prettier/vim-prettier', run = 'npm install'}

    -- language server and code completion
    -- Install new servers with ':LspInstall <server>'
    -- it'll autocomplete all the available servers
    use 'neovim/nvim-lspconfig'
    use 'onsails/lspkind-nvim'
    use 'williamboman/nvim-lsp-installer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    -- Telescope for fuzzy finding
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/telescope.nvim'
    use 'jremmen/vim-ripgrep'

    -- File browser
    use { 
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function() require 'nvim-tree'.setup {} end
    }

    end
)
