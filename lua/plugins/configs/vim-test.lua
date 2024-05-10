return  {
    'vim-test/vim-test',  -- Plugin repository
    ft = { 'ruby', 'python', 'javascript', 'typescript', 'lua' },  -- Load the plugin for multiple testable languages
    config = function()
      -- Configuring vim-test with specific options
      vim.cmd [[
        let test#strategy = 'wezterm'  " Use Kitty terminal for running tests
        let test#ruby#bundle_exec = 1  " Use bundle exec for running Ruby tests
        let test#ruby#use_binstubs = 0 " Do not use binstubs for Ruby tests
      ]]

      -- Key mappings using space as a prefix, which works well if Caps Lock is mapped to Ctrl
      -- The <silent> flag suppresses command-line output when the key mappings are used
      vim.api.nvim_set_keymap('n', '<space>l', ':TestNearest<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<space>f', ':TestFile<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<space>a', ':TestSuite<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<space>.', ':TestLast<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<space>v', ':TestVisit<CR>', { noremap = true, silent = true })
    end
  }
