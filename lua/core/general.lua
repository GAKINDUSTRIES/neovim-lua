-- General Settings
-- Set the number of commands from history that can be stored
vim.opt.history = 500

-- Enable filetype detection and plugins based on filetype
vim.cmd('filetype plugin on')
vim.cmd('filetype indent on')

-- Automatically read a file when it is changed from the outside
vim.opt.autoread = true

-- Set the global leader key for shortcuts
vim.g.mapleader = ','

-- Map 'jk' to escape in insert mode
vim.keymap.set('i', 'jk', '<ESC>', { noremap = true })

-- Map '<leader>w' to save the current file forcefully
vim.keymap.set('n', '<leader>w', ':w!<CR>', { noremap = true })

-- Use the system clipboard for all yank, delete, change and put operations
vim.opt.clipboard = 'unnamedplus'

-- Create a command 'W' that saves the file using sudo (useful for handling files with permissions)
vim.cmd('command W w !sudo tee % > /dev/null')

-- Remap 'Y' to yank from the cursor to the end of the line
vim.keymap.set('n', 'Y', 'y$', { noremap = true })

-- Enable mouse support in all modes
vim.opt.mouse = 'a'
