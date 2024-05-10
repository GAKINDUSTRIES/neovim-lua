return {
    'mfussenegger/nvim-lint',
    ft = {'ruby', 'python', 'lua'},
    config = function()
        local lint = require("lint")
        lint.linters_by_ft = {
          ruby   = { "rubocop"} ,
          python = { "pylint" },
          lua    = { "luacheck" },
        }
        vim.api.nvim_create_autocmd({'BufWritePost', 'TextChanged'}, {
            pattern = "*",
            callback = function()
              lint.try_lint()
            end
        })
    end
}
