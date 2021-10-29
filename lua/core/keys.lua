--
--
-- ██╗  ██╗███████╗██╗   ██╗███████╗
-- ██║ ██╔╝██╔════╝╚██╗ ██╔╝██╔════╝
-- █████╔╝ █████╗   ╚████╔╝ ███████╗
-- ██╔═██╗ ██╔══╝    ╚██╔╝  ╚════██║
-- ██║  ██╗███████╗   ██║   ███████║
-- ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝
--
--




-- Define modes and helpers
local normal = 'n'
local visual = 'v'
local insert = 'i'

local map = function(mode, key, result)
    vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end



-- Set the Leader
vim.g.mapleader = ' '


-- File tree toggle
map(normal, '<leader>a', ':NvimTreeToggle<cr>')


-- Telescope bindings
map(normal, '<C-p>', ':lua require"telescope.builtin".find_files()<cr>')
map(normal, '<C-f>', ':lua require"telescope.builtin".live_grep()<cr>')


-- Split bindings
map(normal, '<leader>j', ':split<cr>')
map(normal, '<leader>l', ':vsplit<cr>')

map(insert, '<C-w>', ':q<cr>')
map(normal, '<C-w>', ':q<cr>')

map(normal, '<M-k>', ':wincmd k<cr>')
map(normal, '<M-j>', ':wincmd j<cr>')
map(normal, '<M-h>', ':wincmd h<cr>')
map(normal, '<M-l>', ':wincmd l<cr>')
