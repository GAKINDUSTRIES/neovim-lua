return {
  'mg979/vim-visual-multi', lazy = false, -- Set lazy to false if you want it loaded on startup
   config = function()
       local map_opts = { noremap = false, silent = false }

       -- Disable default mappings
       vim.g.VM_default_mappings = 0

       -- Map '∆' to Alt-j
       vim.api.nvim_set_keymap('n', '∆', '<M-j>', map_opts)

       -- Map '˚' to Alt-k
       vim.api.nvim_set_keymap('n', '˚', '<M-k>', map_opts)

       -- Map Alt-j and Alt-k for adding cursors vertically
       vim.api.nvim_set_keymap('n', '<A-j>', '<Plug>(VM-Add-Cursor-Down)', map_opts)
       vim.api.nvim_set_keymap('n', '<A-k>', '<Plug>(VM-Add-Cursor-Up)', map_opts)
   end
}
