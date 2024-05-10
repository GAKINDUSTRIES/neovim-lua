return  {
  'tpope/vim-rails',  -- Plugin repository
  ft = { 'ruby', 'eruby' },  -- Load the plugin only for Ruby and ERB files
  -- Optional: Specify additional configuration
  config = function()
    -- Any Lua-based configuration for vim-rails can go here.
    -- Note: vim-rails is primarily configured via Vimscript commands and settings.
    -- Lua doesn't directly configure vim-rails but can set related Vim options.

    -- Example: Set a Vim option related to Ruby development.
    vim.opt.expandtab = true  -- Use spaces instead of tabs for indentation.
  end
}
