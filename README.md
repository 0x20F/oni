<p align="center">
	<img alt="oni mask" src="./.github/images/oni.png" width="300"/>
</p>


<h1 align="center">oni</h1>

<p align="center">Personal nvim configuration structure and documentation. An ever growing list of cool things that can be done with nvim...</p>
<p align="center"><b>⚠️ this file is auto-generated ⚠️</b></p>
<br/><br/>

## Directory Structure
- `~/.config/nvim`
	- `init.lua` - Basic _vim_ configuration and main entrypoint
	- `lua` - Directory for all modules
		- `core` - Directory for all _basic_ modules that make everything work
			- `completion.lua`: This is where are the language servers are setup and configured.
			- `keys.lua`: All the key mappings
			- `plugins.lua`: All Packer configuration together with all #2 Plugins that should be installed, this includes themes.
			- `tree-sitter.lua`: Tree-Sitter configuration. More language servers for nicer syntax highlighting.
		- `misc` - Small quality of life tweaks, nothing that messes with the editor usage itself.
			- `dashboard.lua`: Dashboard banner and settings
			- `statusline.lua`: Statusline setup and configuration


<br/>


## Plugins
A lot of plugins... Here are the links for the most _general_ ones, the rest in `lua/core/plugins.lua` are just dependencies for these.

- [`packer`](https://github.com/wbthomason/packer.nvim) - Package manager
- [`vim-one`](https://github.com/rakr/vim-one) - Simple theme, can't beat it
- [`dashboard-nvim`](https://github.com/glepnir/dashboard-nvim) - Clean looking start page when running without any parameters
- [`nvim-treesitter`](https://github.com/nvim-treesitter/nvim-treesitter) - Better syntax highlighting. (Install servers with `:TSInstall`)
- [`vim-prettier`](https://github.com/prettier/vim-prettier) - File formatter
- [`telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder for literally anything
- [`nvim-tree.lua`](https://github.com/kyazdani42/nvim-tree.lua) - Pretty file browser
- [`nvim-hardline`](https://github.com/ojroques/nvim-hardline) - Status line at the bottom of the editor
- [`nvim-lsp-installer`](https://github.com/williamboman/nvim-lsp-installer) - Install new completion servers with `:LspInstall <server>`, some are installed automatically in `lua/core/completion.lua`

Honorable mentions: [`lspkind-nvim`](https://github.com/onsails/lspkind-nvim), [`delimitMate`](https://github.com/Raimondi/delimitMate)


<br/>

## Key Bindings
**Leader** is _space_ so wherever you see `SPC` think of that.

**Modes**:
- `n` - normal
- `i` - insert
- `v` - visual

|     combo     | action                                                        |  modes   |
|:-------------:| ------------------------------------------------------------- |:--------:|
|    `SPC a`    | Open file browser                                             |   `n`    |
|  `Control p`  | Find files                                                    |   `n`    |
|  `Control f`  | Find text in files                                            |   `n`    |
|   `SPC j/k`   | Split **horizontally**                                        |   `n`    |
|   `SPC h/l`   | Split **vertically**                                          |   `n`    |
|  `Control w`  | Close currently focused file                                  | `n`, `i` |
| `Alt j/k/h/l` | Move between split panes (down, up, left, right) respectively | `n`, `i` |
|  `Control s`  | Save the currently focused file                               | `n`, `i`, `v`         |
