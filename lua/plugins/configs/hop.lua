return {
    'phaazon/hop.nvim',
    event = 'VimEnter',
    config = function()
      require'hop'.setup {
        keys = 'etovxqpdygfblzhckisuran',  -- default keys
        case_insensitive = true  -- Enable case insensitivity
      }

      -- Disable default mappings in hop
      -- Note: hop.nvim does not enable any invasive mappings by default,
      -- so this step is not usually necessary unless you define them elsewhere.

      -- Mapping Ctrl-o to hop by word, similar to the EasyMotion behavior
      vim.api.nvim_set_keymap('n', '<C-o>', ":HopWord<cr>", {silent = true})
    end,
    keys = '<C-o>'
  }
