# Neovim Lua Configuration

This repository contains a personal Neovim configuration written in Lua aimed at enhancing productivity and integrating powerful tools for various development environments. It leverages the flexibility of Lua for scripting within Neovim, offering a more performant and maintainable configuration setup.

## Features

- **Fully Customizable**: Built with Lua, making it easy to modify and extend.
- **Performance Optimized**: Lazy loading of plugins to ensure that Neovim starts quickly.
- **Developer Friendly**: Includes configurations that are useful for developers working in multiple programming languages.

## Included Plugins

This configuration includes a selection of plugins managed by `lazy.nvim` for optimal performance and enhanced functionality:

- **[lazy.nvim](https://github.com/folke/lazy.nvim)**: A fast and flexible Neovim plugin manager that enhances the startup time and performance by lazy-loading plugins.

- **[nvim-autopairs](https://github.com/windwp/nvim-autopairs)**: A Neovim plugin for auto-closing pairs that automatically completes `"(", "{", "["`, etc. with smart handling for quotes and more.

- **[tokyonight.nvim](https://github.com/folke/tokyonight.nvim)**: A clean, dark Neovim theme inspired by the Tokyo night landscape, available in both storm and night styles.

- **[Comment.nvim](https://github.com/numToStr/Comment.nvim)**: A smart and powerful commenting plugin for Neovim that supports motion, line, and visual mode comment toggling.

- **[conform.nvim](https://github.com/stevearc/conform.nvim)**: A Neovim plugin that automates the enforcement of code style and conventions by leveraging the power of editorconfig.

- **[vim-easy-align](https://github.com/junegunn/vim-easy-align)**: A Vim alignment plugin that makes aligning text, code, comments, and tags simple and easy.

- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)**: Integrates closely with git repositories to provide real-time diff markers and hunk management directly in the buffer.

- **[hop.nvim](https://github.com/phaazon/hop.nvim)**: A motion plugin for Neovim that allows you to jump to any word, character, or line visible on the screen with minimal keystrokes.

- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)**: Quick and easy setup for the Neovim LSP client configurations for fast and functional language servers integration.

- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)**: A blazing fast and customizable status line plugin for Neovim that looks sleek and minimal.

- **[mason.nvim](https://github.com/williamboman/mason.nvim)**: A Neovim plugin that provides an interface to easily manage external editor tooling like LSPs, DAPs, linters, and formatters.

- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)**: A modern Neovim completion framework that provides highly extendable and customizable auto-completion support.

- **[nvim-lint](https://github.com/mfussenegger/nvim-lint)**: An asynchronous linter plugin for Neovim that supports multiple programming languages with easy configuration.

- **[nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)**: A highly customizable file explorer for Neovim that integrates seamlessly with other plugins.

- **[nvim-surround](https://github.com/kylechui/nvim-surround)**: A plugin to make altering, adding, and removing surrounding characters such as parentheses, brackets, quotes, and tags efficient.

- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)**: A highly extendable fuzzy finder over lists that provides a rich user interface for managing and searching through large sets of data.

- **[nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)**: Uses treesitter to create custom text objects for Neovim, enhancing code navigation and manipulation.

- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)**: Neovim plugin for text highlighting, folding, and related features, using a fast incremental parsing library.

- **[vim-rails](https://github.com/tpope/vim-rails)**: Ruby on Rails power tools for Vim, providing advanced navigation and refactoring utilities tailored for Rails projects.

- **[vim-test](https://github.com/vim-test/vim-test)**: A comprehensive test runner for Neovim, supporting a multitude of test frameworks and languages, directly from within the editor.

- **[vim-visual-multi](https://github.com/mg979/vim-visual-multi)**: Multiple cursors plugin for Vim, allowing simultaneous text editing in multiple positions in a buffer.


## Installation

To install this configuration on your machine:

### Prerequisites

- Ensure you have Neovim (v0.5 or newer) installed.
- Git must be installed to clone the repository and fetch plugins.

### Steps

1. **Clone the Repository**:
   Clone this repository into a location of your choice. For example, you can clone it to your home directory:

   ```bash
   git clone https://github.com/GAKINDUSTRIES/neovim-lua.git ~/neovim-lua
   ```
2.  **Run the Install Script**

    Navigate to the cloned directory and run the `install.sh` script. This will set up the necessary symbolic links and configure Neovim with the new settings:

    ```bash
    cd ~/neovim-lua
    ./install.sh
    ```

    Make sure the script is executable. If not, you can make it executable by running:

    ```bash
    chmod +x install.sh
    ```

## Installation

After running the installation script, launch Neovim to complete any additional setup by the plugins. Restart Neovim to ensure all plugins and configurations are loaded correctly. Review the plugin documentation to further customize your setup.


## Contributing

Looking to contribute? Great! Here’s how you can help:

1. Fork the repository.
1. Create a new branch (git checkout -b feature-branch).
1. Make your changes.
1. Commit your improvements (git commit -am 'Add some feature').
1. Push to the branch (git push origin feature-branch).
1. Create a new Pull Request.


## License

MIT License

Copyright (c) <2024> <Guillermo Kuster>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.








