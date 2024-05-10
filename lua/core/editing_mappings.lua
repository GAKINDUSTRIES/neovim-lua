-- Editing Mappings

-- Remap '0' to go to the first non-blank character of the line
vim.keymap.set('', '0', '^', { noremap = true })

-- Remap '$' to go to the last non-blank character of the line
vim.keymap.set('', '$', 'g_', { noremap = true })

-- Enter a new line below in normal mode
vim.keymap.set('', '<CR>', 'o<Esc>', { noremap = true })

