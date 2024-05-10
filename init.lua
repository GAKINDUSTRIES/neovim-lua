-- Ensure lazy.nvim is loaded
require('plugins.lazy')

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

-- load UTILS
require('utils.rails_shortcuts')
