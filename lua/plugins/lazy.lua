local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/opt/lazy.nvim'
local is_installed = vim.fn.empty(vim.fn.glob(install_path)) == 0

if not is_installed then
  vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/folke/lazy.nvim.git', install_path})
end

vim.cmd [[packadd lazy.nvim]]
