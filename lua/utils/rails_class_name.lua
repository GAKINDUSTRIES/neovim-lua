-- ~/.config/nvim/lua/utils/rails_class_name.lua
local M = {}

function M.get_rails_class_name()
    local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
    local full_class_name = {}

    for _, line in ipairs(lines) do
        -- Match module or class definition
        local mod = line:match("^%s*module%s+([%w_]+)")
        local cls = line:match("^%s*class%s+([%w_:]+)")

        if mod then
            table.insert(full_class_name, mod)
        elseif cls then
            -- Handle classes defined with modules in a single line
            local parts = vim.split(cls, "::")
            for _, part in ipairs(parts) do
                table.insert(full_class_name, part)
            end
            break  -- Stop after the first class definition
        end
    end

    local result = table.concat(full_class_name, "::")
    return result
end

function M.copy_class_name_to_clipboard()
    local class_name = M.get_rails_class_name()
    -- Copy to clipboard (macOS version, use 'setreg' for cross-platform within Neovim)
    vim.fn.setreg('+', class_name)
    -- For Linux, replace the above line with:
    -- vim.fn.system("echo " .. class_name .. " | xclip -selection clipboard")

    print("Copied to clipboard:", class_name)
end

return M
