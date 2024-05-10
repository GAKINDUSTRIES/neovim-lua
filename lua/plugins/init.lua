-- .config/nvim/lua/plugins/init.lua

vim.cmd([[packadd lazy.nvim]])  -- Make sure lazy.nvim is loaded

local function load_plugins()
    local plugins = {}

    -- Load additional plugin configurations dynamically
    local plugin_configs = vim.fn.glob(vim.fn.stdpath('config') .. '/lua/plugins/configs/*.lua', 0, 1)
    print(plugin_configs.tostring)
    for _, config_path in ipairs(plugin_configs) do
        local plugin_name = vim.fn.fnamemodify(config_path, ":t:r")
        local status_ok, plugin_spec = pcall(require, 'plugins.configs.' .. plugin_name)
        if status_ok and plugin_spec then
            table.insert(plugins, plugin_spec)
        else
            print("Error loading config for " .. plugin_name .. ": " .. plugin_spec)
        end
    end

    -- Use lazy.nvim or your preferred plugin manager here
    require('lazy').setup(plugins)
end

load_plugins()
