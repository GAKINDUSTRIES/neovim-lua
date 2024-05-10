-- Performance.lua

-- Optimize the garbage collector to improve responsiveness and reduce memory overhead
local function optimize_garbage_collector()
    -- Increase the garbage collector pause ratio
    collectgarbage('setpause', 100)
    -- Increase the step size of the garbage collector
    collectgarbage('setstepmul', 400)
end

-- Call the function to optimize the garbage collector on Neovim start
optimize_garbage_collector()

-- Additional performance settings can be added here
-- For example, setting lazyredraw to minimize unnecessary redraws
vim.opt.lazyredraw = true

-- Use fast terminal rendering to improve performance
vim.opt.ttyfast = true
