return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer", -- source for text in buffer
    "hrsh7th/cmp-path", -- source for file system paths
    {
      "L3MON4D3/LuaSnip",
      -- follow latest release.
      version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
      -- install jsregexp (optional!).
      build = "make install_jsregexp",
    },
    "saadparwaiz1/cmp_luasnip", -- for autocompletion
    "rafamadriz/friendly-snippets", -- useful snippets
    "onsails/lspkind.nvim", -- vs-code like pictograms
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    -- Function to handle tab key in insert mode
    local function tab_handler()
        if luasnip.expand_or_jumpable() then
            return "<Plug>luasnip-expand-or-jump"
        else
            -- Check for `expandtab` setting and insert appropriate number of spaces
            return vim.o.expandtab and string.rep(" ", vim.o.shiftwidth) or "<Tab>"
        end
    end

    -- Function to handle shift-tab key in insert mode
    local function s_tab_handler()
        if luasnip.jumpable(-1) then
            return "<Plug>luasnip-jump-prev"
        else
            -- Insert the actual shift-tab keycode
            return "<S-Tab>"
        end
    end

    -- Set keymappings for LuaSnip using the new functions
    vim.keymap.set("i", "<Tab>", tab_handler, {expr = true, silent = true})
    vim.keymap.set("s", "<Tab>", tab_handler, {expr = true, silent = true})
    vim.keymap.set("i", "<S-Tab>", s_tab_handler, {expr = true, silent = true})
    vim.keymap.set("s", "<S-Tab>", s_tab_handler, {expr = true, silent = true})

    -- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      completion = {
        completeopt = "menu,menuone,preview",
      },
      snippet = { -- configure how nvim-cmp interacts with snippet engine
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-p>"] = cmp.mapping.select_prev_item(), -- previous suggestion
        ["<C-n>"] = cmp.mapping.select_next_item(), -- next suggestion
        ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
        ["<C-e>"] = cmp.mapping.abort(), -- close completion window
        ["<Tab>"] = cmp.mapping.confirm({ select = true }),
      }),
      -- sources for autocompletion
      sources = cmp.config.sources({
        { name = "nvim_lsp"},
        { name = "luasnip" }, -- snippets
        { name = "buffer" }, -- text within current buffer
        { name = "path" }, -- file system paths
      }),
    })
  end,
}
