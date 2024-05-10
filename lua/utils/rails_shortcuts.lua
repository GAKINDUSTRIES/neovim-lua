-- Get rails class. See utils/rails_class_name.lua

vim.api.nvim_set_keymap('n', '<leader>rc', ':lua require("utils.rails_class_name").copy_class_name_to_clipboard()<CR>', { noremap = true, silent = true })

-- Create commands with uppercase names
vim.api.nvim_create_user_command(
  'OpenDBconfig',
  function()
    vim.cmd('tabf config/database.yml')
  end,
  {bar = true}
)

vim.api.nvim_create_user_command(
  'OpenEnv',
  function()
    vim.cmd('tabf config/_env.rb')
  end,
  {bar = true}
)

-- Use Vimscript to create abbreviations for the lowercase commands
vim.cmd [[
  cnoreabbrev db OpenDBconfig
  cnoreabbrev env OpenEnv
]]
