# sena.nvim

`sena.nvim` is my personal neovim setup for Python, Rust and Web development.
Thanks to all the amazing open source contributors of neovim and all the plugins we used for making this bloated and dumb setup possible!

## Features

![image](https://ibb.co.com/bb2k4Q1)

> [!WARNING]
> The image support only works on unix like system with kitty terminal and imagemagic installed. I will add cross platform support soon.

### Custom Live Server Plugin

- A custom live server plugin for managing local development servers
- List and manage currently open live server ports using Telescope
- Start or open a live server with `<leader>ls`

### Plugin Management

- Uses Packer.nvim for plugin management
- Includes a wide range of plugins for various functionalities

### LSP and Language Support

- LSP support for Python, Rust, HTML, CSS, JavaScript, TypeScript, and Lua
- Easy addition of support for other languages

### File Exploration

- Neovim-Neo-Tree for visual file exploration
- Bufferline for buffer management

### Git Integration

- Gitsigns for showing git status and information

### Productivity Features

- Telescope for fuzzy finding and file navigation
- Treesitter for improved syntax highlighting and code understanding
- Auto-pairing and auto-tagging
- Commenting and uncommenting with keybinds
- Color picker for easy color selection

### Aesthetics

- Custom theme (Rose Pine) with theme picker support
- Lualine for a customizable status line
- Bufferline for buffer management

### Performance

- Optimized for speed and responsiveness

## Keybinds

The leader key is set to `<space>`.

### Navigation

| Keybind                            | Action                  |
| ---------------------------------- | ----------------------- |
| `<A-h>`, `<A-j>`, `<A-k>`, `<A-l>` | Move between windows    |
| `<A-S-Tab>`                        | Move to previous buffer |
| `<A-Tab>`                          | Move to next buffer     |
| `<C-n>`                            | Go to next buffer       |
| `<C-p>`                            | Go to previous buffer   |
| `<leader>c`                        | Close current buffer    |
| `<leader>u`                        | Toggle undotree         |

### File Management

| Keybind | Action                   |
| ------- | ------------------------ |
| `<A-f>` | Focus on Neovim-Neo-Tree |
| `<A-e>` | Toggle Neovim-Neo-Tree   |

### Live Server

| Keybind      | Action                      |
| ------------ | --------------------------- |
| `<leader>ll` | List live servers           |
| `<leader>ls` | Start or open a live server |

### Telescope

| Keybind      | Action                                |
| ------------ | ------------------------------------- |
| `<leader>ff` | Find files                            |
| `<leader>gf` | Find git files                        |
| `<leader>fw` | Fuzzy find words in project directory |

### LSP

| Keybind     | Action                  |
| ----------- | ----------------------- |
| `gD`        | Go to declaration       |
| `gd`        | Go to definition        |
| `K`         | Show hover information  |
| `gi`        | Go to implementation    |
| `<C-k>`     | Show signature help     |
| `<space>wa` | Add workspace folder    |
| `<space>wr` | Remove workspace folder |
| `<space>rn` | Rename symbol           |
| `<space>f`  | Format file             |

### Git

| Keybind      | Action                    |
| ------------ | ------------------------- |
| `]c`         | Go to next hunk           |
| `[c`         | Go to previous hunk       |
| `<leader>hs` | Stage hunk                |
| `<leader>hr` | Reset hunk                |
| `<leader>hS` | Stage buffer              |
| `<leader>hu` | Undo stage hunk           |
| `<leader>hR` | Reset buffer              |
| `<leader>hp` | Preview hunk              |
| `<leader>hb` | Blame line                |
| `<leader>tb` | Toggle current line blame |
| `<leader>hd` | Diff this                 |
| `<leader>hD` | Diff this ~               |
| `<leader>td` | Toggle deleted            |

### Markdown

| Keybind       | Action                |
| ------------- | --------------------- |
| `<leader>mp`  | Markdown preview      |
| `<leader>mps` | Stop Markdown preview |

### Color Picker

| Keybind     | Action              |
| ----------- | ------------------- |
| `<leader>w` | Pick color          |
| `<c-``      | Insert picked color |

### Flash

| Keybind | Action            |
| ------- | ----------------- |
| `s`     | Flash jump        |
| `S`     | Flash treesitter  |
| `r`     | Remote flash      |
| `R`     | Treesitter search |

### Comment

| Keybind      | Action                 |
| ------------ | ---------------------- |
| `<leader>cc` | Toggle comment (line)  |
| `<leader>cu` | Toggle comment (block) |

## Quick Tips

### Beautiful Code Screenshots

Want to share a beautiful snippet of your code? Here's a fun little trick:

1. Enter **Visual Mode** by pressing `V` while in **Normal Mode**.
2. Select the part of your code you want to capture.
3. Run the `CarbonNow` command, and voilà~! A new browser tab will open, showing your selected code with customizable styles.
4. From there, you can tweak the design to your liking and share a gorgeous image of your code with the world!

Thanks to `https://carbon.now.sh/` and `ellisonleao/carbon-now.nvim` for making this possible ;)

## Installation

1. Clone the repository:

   ```
   git clone https://github.com/yourusername/sena.nvim.git ~/.config/nvim
   ```

2. Install Packer:

   ```
   git clone --depth 1 https://github.com/wbthomason/packer.nvim\
     ~/.local/share/nvim/site/pack/packer/start/packer.nvim
   ```

3. Start Neovim and run `:PackerSync` to install all plugins.
   The configuration is split into several files for better organization:

## Contributing

Contributions are welcome! Please feel free to open issues or pull requests.

## Acknowledgments

This setup is built on top of many amazing open-source projects and plugins. Special thanks to all the contributors of Neovim and the various plugins used in this configuration.

## License

This project is licensed under the CC0 1.0 Universal License. See the [LICENSE](LICENSE) file for details.
