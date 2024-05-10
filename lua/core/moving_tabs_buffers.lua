-- Moving Around, Tabs, Windows, and Buffers

-- Key map for clearing search highlights
vim.keymap.set('n', '<leader><CR>', ':noh<CR>', { silent = true })

-- Smart way to move between windows
vim.api.nvim_set_keymap('n', '<C-j>', '<C-W>j', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-W>k', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-h>', '<C-W>h', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-W>l', {noremap = true})

-- Resize windows
vim.api.nvim_set_keymap('n', '<Leader>+', ':resize +15<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<Leader>-', ':resize -15<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<Leader>>', ':vertical resize +15<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<Leader><', ':vertical resize -15<CR>', {silent = true})

-- Normalize all splits
vim.api.nvim_set_keymap('n', '<Leader>=', '<C-w>=', {noremap = true})

-- Create, close, and manage buffers
vim.api.nvim_set_keymap('n', '<leader>bn', ':vnew<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>bd', ':Bclose<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>ba', ':bufdo bd<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>b<leader>', ':bnext<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>bp', ':bprevious<CR>', {})

-- Manage tabs
vim.api.nvim_set_keymap('n', '<leader>tn', ':tabnew<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>to', ':tabonly<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>tc', ':tabclose<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>th', ':tabprevious<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>tl', ':tabnext<CR>', {})
vim.api.nvim_set_keymap('n', '<S-l>', ':tabnext<CR>', {})
vim.api.nvim_set_keymap('n', '<S-h>', ':tabprevious<CR>', {})

-- Toggle between last accessed tab
vim.g.lasttab = 1
vim.api.nvim_set_keymap('n', '<leader>t<leader>', ':exe "tabn ".g:lasttab<CR>', {})
vim.api.nvim_create_autocmd("TabLeave", {
    pattern = '*',
    callback = function()
        vim.g.lasttab = vim.fn.tabpagenr()
    end
})

-- Open new tab with the current buffer's path
vim.api.nvim_set_keymap('n', '<leader>te', ':tabedit <c-r>=expand("%:p:h")<cr>/', {})

-- Switch CWD to the directory of the open buffer
vim.api.nvim_set_keymap('n', '<leader>cd', ':cd %:p:h<CR>:pwd<CR>', {})

-- Safe configuration with pcall to avoid errors if unavailable
pcall(function()
    vim.o.switchbuf = 'useopen,usetab'
    vim.o.stal = 2
end)

-- Return to last edit position
vim.api.nvim_create_autocmd("BufReadPost", {
    pattern = '*',
    callback = function()
        if vim.fn.line("'\"") > 1 and vim.fn.line("'\"") <= vim.fn.line("$") then
            vim.cmd('normal! g`"')
        end
    end
})
