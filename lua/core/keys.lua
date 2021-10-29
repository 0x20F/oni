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
map(normal, '<leader>fs', ':lua require"telescope.builtin".find_files()<cr>')
map(normal, '<leader>fg', ':lua require"telescope.builtin".live_grep()<cr>')

