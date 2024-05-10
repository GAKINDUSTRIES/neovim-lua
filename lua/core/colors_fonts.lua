
-- Colors and Fonts
-- Enable syntax highlighting
vim.cmd('syntax enable')

-- Set the background color to dark (affects color schemes)
vim.opt.background = 'dark'

-- Enable 256 color palette in gnome-terminal
vim.cmd([[
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
]])

-- Attempt to set the color scheme to 'desert'
vim.cmd([[
try
  colorscheme desert
catch
endtry
]])
