-- Misc

-- Quickly open a buffer for scribble
vim.keymap.set('n', '<leader>q', ':e ~/buffer<CR>', { silent = true })

-- Insert parenthesis to highlighted word
vim.keymap.set('v', ')', '<esc>`>a)<esc>`<i(<esc>', { noremap = true })

-- Insert parenthesis to highlighted word with space
vim.keymap.set('v', '(', '<esc>`>a )<esc>`<i( <esc>', { noremap = true })

-- Insert square brackets to highlighted word
vim.keymap.set('v', ']', '<esc>`>a]<esc>`<i[<esc>', { noremap = true })

-- Insert square brackets to highlighted word with space
vim.keymap.set('v', '[', '<esc>`>a ]<esc>`<i[ <esc>', { noremap = true })

-- Insert curly braces to highlighted word
vim.keymap.set('v', '}', '<esc>`>a}<esc>`<i{<esc>', { noremap = true })

-- Insert curly braces to highlighted word with space
vim.keymap.set('v', '{', '<esc>`>a }<esc>`<i{ <esc>', { noremap = true })

-- Insert double quotes to highlighted word
vim.keymap.set('v', '"', '<esc>`>a"<esc>`<i"<esc>', { noremap = true })

-- Insert single quotes to highlighted word
vim.keymap.set('v', "'", "<esc>`>a'<esc>`<i'<esc>", { noremap = true })
