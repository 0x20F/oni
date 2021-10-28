local configs = require 'nvim-treesitter.configs'


-- To install the parser for a specific language
-- use ':TSInstall {language}' tab completion available
-- use ':TSInstallInfo' to see what parsers are installed
configs.setup {
        ensure_installed = 'maintained',
        highlight = {
                enable = true,
        }
}
