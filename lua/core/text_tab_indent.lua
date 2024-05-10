
-- Text, Tab, and Indent Related
-- Convert tabs to spaces
vim.opt.expandtab = true

-- Smart indenting when starting a new line
vim.opt.smarttab = true

-- Automatically indent new lines
vim.opt.cindent = true

-- Set shift width for autoindents
vim.opt.shiftwidth = 2

-- Set the width of a tab stop
vim.opt.tabstop = 2

-- Control spacing for tab and backspace key
vim.opt.softtabstop = 2

-- Wrap lines at word (requires linebreak to be set)
vim.opt.wrap = true

-- Automatically remove trailing whitespace on save
vim.cmd('autocmd BufWritePre * :%s/\\s\\+$//e')
