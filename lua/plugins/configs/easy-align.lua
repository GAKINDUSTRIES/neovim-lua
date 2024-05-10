return {
  'junegunn/vim-easy-align',
  config = function()
      -- Setup your key mappings for vim-easy-align
      -- Example: Start interactive EasyAlign in visual mode (e.g., vipga)
      vim.api.nvim_set_keymap('x', 'ga', '<Plug>(EasyAlign)', {})
      -- Example: Start interactive EasyAlign for a motion/text object (e.g., gaip)
      vim.api.nvim_set_keymap('n', 'ga', '<Plug>(EasyAlign)', {})
  end
}
