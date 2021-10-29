<p align="center">
	<img alt="oni mask" src="./.github/images/oni.png" width="300"/>
</p>


<h1 align="center">oni</h1>

<p align="center">My own neovim setup and configuration files </p>


### 1. Directory Structure
- `~/.config/nvim`
	- `init.lua` - Default _vim_ configuration and main entrypoint
	- `lua` - Directory for all modules
		- `core` - Directory for all _basic_ modules that make everything work
			- `completion.lua`: This is where are the language servers are setup and configured.
			- `plugins.lua`: All Packer configuration together with all [[#2 Plugins]] that should be installed, this includes themes.
			- `tree-sitter.lua`: Tree-Sitter configuration. More language servers for nicer syntax highlighting.
		- `misc` - Small quality of life tweaks, nothing that messes with the editor usage itself.

<br/>

### 2. Plugins
A lot of plugins... Here are the links for the most _general_ ones, the rest in `lua/core/plugins.lua` are just dependencies for these.

- [`packer`](https://github.com/wbthomason/packer.nvim) - Package manager 
- [`vim-one`](https://github.com/rakr/vim-one) - Simple theme, can't beat it
- [`dashboard-nvim`](https://github.com/glepnir/dashboard-nvim) - Clean looking start page when running without any parameters
- [`nvim-treesitter`](https://github.com/nvim-treesitter/nvim-treesitter) - Better syntax highlighting. (Install servers with `:TSInstall`)
- [`vim-prettier`](https://github.com/prettier/vim-prettier) - File formatter
- [`telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim) - [[Fuzzy finder]] for literally anything
- [`nvim-tree.lua`](https://github.com/kyazdani42/nvim-tree.lua) - Pretty file browser

Honorable mentions: [`lspkind-nvim`](https://github.com/onsails/lspkind-nvim), [`nvim-lsp-installer`](https://github.com/williamboman/nvim-lsp-installer)
