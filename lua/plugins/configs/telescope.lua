-- .config/nvim/lua/plugins/configs/telescope.lua

return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
      },

    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup {
          defaults = {
            file_ignore_patterns = {
              "node_modules",
              "%.git",
              "sorbet",
            },
            mappings = {
              i = {
                ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                ["<C-j>"] = actions.move_selection_next, -- move to next result
                ["<C-q>"] = actions.send_selected_to_qflist,
              }
            }
          }
        }

        -- Keybindings for Telescope
        local builtin = require('telescope.builtin')
        local keymap = vim.keymap -- for conciseness

        keymap.set('n', '<leader>j', builtin.find_files, {desc = "Find files"})
        keymap.set('n', '<leader>c', builtin.grep_string, {desc = "Find string under cursor"})
        keymap.set('n', '<leader>g', builtin.live_grep, {desc = "Live grep"})
        keymap.set('n', '<Tab>', builtin.buffers, {desc = "List buffers"})
        keymap.set('n', '<leader>t', builtin.tags, {desc = "Find help tags"})
    end
}
