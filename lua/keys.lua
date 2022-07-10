--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jk', '<esc>', {})

-- Toggle nvim-tree
map('n', 'n', [[:NvimTreeToggle<CR>]], {})

-- Toggle more plugins
map('n', 'l', [[:IndentLinesToggle<CR>]], {})
map('n', 't', [[:TagbarToggle<CR>]], {})
map('n', 'ff', [[:Telescope find_files<CR>]], {})

-- Undo tree
map('n', 'ut', [[:UndotreeToggle<CR>]], {})