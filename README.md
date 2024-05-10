# Neovim Lua Configuration

This repository contains a personal Neovim configuration written in Lua aimed at enhancing productivity and integrating powerful tools for various development environments. It leverages the flexibility of Lua for scripting within Neovim, offering a more performant and maintainable configuration setup.

## Features

- **Fully Customizable**: Built with Lua, making it easy to modify and extend.
- **Performance Optimized**: Lazy loading of plugins to ensure that Neovim starts quickly.
- **Developer Friendly**: Includes configurations that are useful for developers working in multiple programming languages.

## Included Plugins

This configuration includes a selection of plugins managed by `lazy.nvim` for optimal performance and enhanced functionality:

- **[lazy.nvim](https://github.com/folke/lazy.nvim)**: A fast and flexible Neovim plugin manager written in Lua.
- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)**: Git integration to show git status in the sign column and perform in-buffer git operations.
- **[nvim-lint](https://github.com/mfussenegger/nvim-lint)**: Asynchronous linting.
- **[vim-test](https://github.com/vim-test/vim-test)**: Run tests from within Neovim and view the results.
- **[vim-rails](https://github.com/tpope/vim-rails)**: Ruby on Rails power tools.
- More plugins can be listed as per your actual configuration.

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

Contributions to this Neovim configuration are welcome. Feel free to fork the project and submit a pull request.


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








