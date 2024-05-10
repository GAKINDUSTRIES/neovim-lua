-- Ag Searching and Cope Displaying

-- Map 'gv' to use telescope's grep string on the visual selection
-- vim.keymap.set('v', 'gv', function() require('telescope.builtin').grep_string({ search = vim.fn.expand("<cword>") }) end, { silent = true })

-- Map '<leader>g' to prompt and grep using telescope
-- vim.keymap.set('n', '<leader>g', function() require('telescope.builtin').grep_string({ search = vim.fn.input("Grep for: ") }) end)
