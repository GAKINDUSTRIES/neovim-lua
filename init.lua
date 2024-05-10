vim.cmd([[packadd lazy.nvim]])  -- Ensure lazy.nvim is loaded

-- Load CORE configurations
require('core.general')
require('core.ui')
require('core.colors_fonts')
require('core.files_backups_undo')
require('core.text_tab_indent')
require('core.visual_mode')
require('core.moving_tabs_buffers')
require('core.status_line')
require('core.editing_mappings')
require('core.ag_searching')
require('core.misc')
require('core.performance')



-- load PLUGINS
-- This will now use lazy.nvim to load other plugins
require('plugins.init')

vim.api.nvim_set_keymap('n', '<leader>fp', ':lua require("utils.rails_class_name").copy_class_name_to_clipboard()<CR>', { noremap = true, silent = true })
