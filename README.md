# sena.nvim

`sena.nvim` is my personal neovim setup for Python, Rust and Web development.
Thanks to all the amazing open source contributors of neovim and all the plugins we used for making this bloated and dumb setup possible!

## Features

![20241017155410_1](https://github.com/user-attachments/assets/e6b74511-7113-42ff-aadb-c90ce297b769)

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
- BarBar ( bufferline ) for buffer management

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
- BarBar ( bufferline ) for buffer management

### Performance

- The perfomance might be slow, cause we are currently not lazy loading plugins and there are a lot of plugins cause it's a bloated setup.

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
| ``<c-` ``   | Insert picked color |

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

## Installation Instructions

To set up `sena.nvim`, follow these steps:

1. **Clone the Repository**:

   ```
   git clone https://github.com/kiyoopoon/sena.nvim.git ~/.config/nvim
   ```

2. **Install Packer**:

   ```bash
   git clone --depth 1 https://github.com/wbthomason/packer.nvim \
     ~/.local/share/nvim/site/pack/packer/start/packer.nvim
   ```

3. **Install Plugins**:
   Launch Neovim and execute the command:

   ```
   :PackerSync
   ```

   This will install all the necessary plugins. The configuration is organized into multiple files for better maintainability.

4. **Additional Dependencies**:
   You will need to install the following tools:

   - `black` (Python code formatter)
   - `isort` (Python import sorter)
   - `prettier` (Code formatter for various languages)

   For image support, ensure you have the Lua Magick module and the ImageMagick package installed. If you're using Arch Linux ( I use Arch BTW ), you can install these from the official repository. For other distributions, you can typically find them in your package manager or install them manually if needed.

## Arch Linux Installation Guide

To install the required tools on Arch Linux, use the following commands:

- For `prettier`:

  ```bash
  npm install -g prettier
  ```

- For `black` and `isort`:

  ```bash
  sudo pacman -S python-black python-isort
  ```

- For `imagemagick`:
  ```bash
  sudo pacman -S imagemagick
  ```
  Additionally, install LuaRocks and use it to install the `imagemagick` Lua module.

## Contributing

Contributions are welcome! Please feel free to open issues or pull requests.

## Acknowledgments

This setup is built on top of many amazing open-source projects and plugins. Special thanks to all the contributors of Neovim and the various plugins used in this configuration.

## License

This project is licensed under the CC0 1.0 Universal License. See the [LICENSE](LICENSE) file for details.
