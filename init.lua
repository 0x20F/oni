require('lua/plugins')
require('lua/tree-sitter')
require('lua/completion')


local options = vim.opt

options.smartindent = true	-- Indent based on programming language
options.autoindent = true	-- For autoindent
options.tabstop = 4		    -- Number of visual spaces per tab
options.expandtab = true	-- Tabs to spaces
options.number = true		-- Show line numbers
options.showmatch = true	-- Highlight matching [{()}]
options.hlsearch = true		-- Highlight matches when searching
options.cursorline = true	-- Highlight current line
options.background = 'dark' -- Tell the them to use its dark colors
vim.g.colors_name = 'one'   -- Set the colorscheme


-- Things that aren't in the nvim API yet
vim.cmd "set termguicolors"

-- Normal highlight command won't work so autokey it
vim.cmd[[ au VimEnter * highlight LineNr guibg=none ctermbg=none ]]
vim.cmd[[ au VimEnter * highlight Normal guibg=none ctermbg=none ]]
