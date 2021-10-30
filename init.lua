--
--
--       %&                       %
--      %%                        %%
--      %%                        %%%
--     %%&                        %%%
--     %%&&                       %&%
--      %&&%                     %%%#
--      %%%%%                   %%%%
--       ,%%%%(   ## ##   #   %%##*
--        %%%%########%%#%######%%%
--         %&%.%#%(###/%###%#%/%%%           ███╗   ██╗██╗   ██╗██╗███╗   ███╗
--        %%%%.%%(#(/#,,((%(%%%##%%          ████╗  ██║██║   ██║██║████╗ ████║
--         #%&..///*((/(/*///(.&(%           ██╔██╗ ██║██║   ██║██║██╔████╔██║
--         ...%///*/*/* *////(.%&            ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
--       ..,%&#%*/%%#%%%%%#/*#(  .           ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
--       ,./%%%%%(/##%%%##(###%%%            ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
--        ../*,,,,/#*#&#/%##,***   .
--        %&%./#..,*%#%(//*. /(. %#
--         %%#% %%(,%****#/%(,(%##
--           #    %(##&##((%
--                 %.(%(#.,
--                 *  %# (.
--                    &
--
--




require('core.plugins')
require('core.tree-sitter')
require('core.completion')
require('core.keys')

require('misc.dashboard')
require('misc.statusline')


local opt = vim.opt

opt.smartindent = true      -- Indent based on programming language
opt.autoindent = true       -- For autoindent
opt.tabstop = 4             -- Number of visual spaces per tab
opt.shiftwidth = 4          -- Indents will have a width of 4
opt.expandtab = true        -- Tabs to spaces
opt.number = true           -- Show line numbers
opt.showmatch = true        -- Highlight matching [{()}]
opt.hlsearch = true         -- Highlight matches when searching
opt.cursorline = true       -- Highlight current line
opt.background = 'dark'     -- Tell the them to use its dark colors
opt.wrap = false            -- Don't wrap really long lines
opt.termguicolors = true    -- Make it use the full range of colors
vim.g.colors_name = 'one'   -- Set the colorscheme


-- Normal highlight command won't work so autokey it
vim.cmd [[ au VimEnter * highlight LineNr guibg=none ctermbg=none ]]
vim.cmd [[ au VimEnter * highlight Normal guibg=none ctermbg=none ]]
