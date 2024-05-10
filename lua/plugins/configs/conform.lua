return    {
  'stevearc/conform.nvim',
  ft = {'ruby', 'python'},  -- File types to trigger the lazy loading
  config = function()
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = {
        ruby = { "rubocop" },
        python = { "pylint" },
      },
    })

    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*",
      callback = function(args)
        conform.format({ bufnr = args.buf })
      end,
    })
  end
}
