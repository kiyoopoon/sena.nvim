# sena.nvim

`sena.nvim` is my personal neovim setup for Python, Rust and Web development.
Thanks to all the amazing open source contributors of neovim and all the plugins we used for making this bloated and dumb setup possible!

![image](https://media.discordapp.net/attachments/1248608549458935810/1293993516405493841/image.png?ex=670964df&is=6708135f&hm=a8af23519c5cc6e857fdc4a8004f659a8e2600a86cbf22316e0bedfe799b0b82&=&format=webp&quality=lossless&width=1920&height=1080)

### Features of sena.nvim

- First of all before everything we have a custom live share plugin not a full working plugin BUT it's still a custom script that has some pretty good live server stuffs ( basic things needed for live server ), you can now close and manage currently open live server ports using `telescope` window.

- Installing plugins using `packer.nvim`.
- LSP for `python`, `rust`, `html`, `css`, `javascript`, `typescript`, `lua` are setup by default and you can add more easily.
- `linting`, `auto-formatting`, code `suggestions` setup.
- `telescope` for finding files easily and `treesitter` for better highlighting.
- `neotree` for visual file exploration and `barbar` for buffer lines
- `gitsigns` for showing git status and info.
- `commenting` and `uncommenting` using keybinds.
- auto `pairing`, auto tag `close` and `rename`.
- Easy and fast navigation using `flash`
- `color picker`.
- A nice theme also a nice `theme picker`.

## Keybinds

The leader key is `space`.

|   `Keybind`   | `Action`                                                       |
| :-----------: | -------------------------------------------------------------- |
|   `Alt + e`   | `Opens nvim-neo-tree [file explorer]`                          |
|   `Alt + f`   | `Focuses on nvim-neo-tree if open otherwise opens and focuses` |
| `leader + ff` | `Fuzzy find files using Telescope`                             |
|  `Alt + gf`   | `Fuzzy find files in your git tracked files`                   |
|  `Alt + fw`   | `Fuzzy find words in your current project directory`           |
|   `Alt + f`   | `Focuses on nvim-tree if open otherwise opens and focuses`     |
| `leader + ll` | `Focuses on nvim-tree if open otherwise opens and focuses`     |
| `leader + ls` | `Start a live server preview in your default browser`          |

I will add more keybind details and docs later.

## Simple yet handy stuffs

### **Quick and Easy Code Sharing**

Want to share a beautiful snippet of your code? Here’s a fun little trick just for you!

1. Enter **Visual Mode** by pressing `V` while in **Normal Mode**.
2. Select the part of your code you want to capture.
3. Run the `CarbonNow` command, and voilà~! A new browser tab will open, showing your selected code with customizable styles.

From there, you can tweak the design to your liking and share a gorgeous image of your code with the world!
Thanks to `https://carbon.now.sh/` and `ellisonleao/carbon-now.nvim` for making this possible ;)
