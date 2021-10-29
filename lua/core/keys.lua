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

-- {modes} an array of modes
-- {key} the keyboard combo to map
-- {result} what should happen when the combo is hit
local map = function(modes, key, result)
    for mode = 1, #modes do
        vim.api.nvim_set_keymap(
            mode,
            key,
            result,
            { noremap = true, silent = true }
        )
    end
end



-- Set the Leader
vim.g.mapleader = ' '


-- File tree toggle
map(normal, '<leader>a', ':NvimTreeToggle<cr>')


-- Telescope bindings
map({ normal }, '<C-p>', ':lua require"telescope.builtin".find_files()<cr>')
map({ normal }, '<C-f>', ':lua require"telescope.builtin".live_grep()<cr>')




-- Split bindings
map({ normal }, '<leader>j', ':split<cr>')
map({ normal }, '<leader>l', ':vsplit<cr>')

-- Quit like in vscode, whenever
map({ normal, insert }, '<C-w>', '<esc>:q<cr>')

-- Move between split panels
map({ normal, insert }, '<M-k>', '<esc>:wincmd k<cr>')
map({ normal, insert }, '<M-j>', '<esc>:wincmd j<cr>')
map({ normal, insert }, '<M-h>', '<esc>:wincmd h<cr>')
map({ normal, insert }, '<M-l>', '<esc>:wincmd l<cr>')


-- Save file like any other text editor
map({ normal, insert, visual }, '<C-s>', '<esc>:w<cr>')


