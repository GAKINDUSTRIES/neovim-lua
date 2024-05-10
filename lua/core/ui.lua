-- Vim User Interface
-- Set the number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 5

-- Set the height of the command-line area to 1 line
vim.opt.cmdheight = 1

-- Allow hidden buffers (buffers that are not visible but not closed)
vim.opt.hidden = true

-- Ignore case in search patterns
vim.opt.ignorecase = true

-- Automatically switch to case-sensitive search if search pattern contains uppercase characters
vim.opt.smartcase = true

-- Highlight search results
vim.opt.hlsearch = true

-- Incrementally search as characters are typed
vim.opt.incsearch = true

-- Avoid redrawing screen while executing macros for performance
vim.opt.lazyredraw = true

-- Show matching brackets when cursor is over one
vim.opt.showmatch = true

-- Time to blink when matching brackets
vim.opt.matchtime = 2

-- Disable audible bell and visual bell
vim.opt.errorbells = false
vim.opt.visualbell = false

-- Set one column for fold display
vim.opt.foldcolumn = '1'
