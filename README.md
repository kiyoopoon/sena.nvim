# sena.nvim
`sena.nvim` is my personal neovim setup for Python, Rust and Web development.
Thanks to all the amazing open source contributors of neovim and all the plugins we used for making this bloated and dumb setup possible!

![image](https://github.com/user-attachments/assets/6abc14f2-99ca-46e2-84b4-bc410c85de7a)

### Features of sena.nvim
- Installing plugins using `packer`.
- LSP for python, rust, html, css, javascript, typescript, lua are setup by default and you can add more easily.
- Linting, auto-formatting, code suggestions setup.
- Treesitter for better highlighting.
- Gitsigns for showing git status and info.
- Commenting and uncommenting keybinds.
- Auto pairing, auto tag close and rename.
- Color picker.
- A nice theme also a nice theme picker.

## Keybinds
The leader key is `space`.
|`Keybind`| `Action` |
|--|--|
| `Alt + e` | `Opens nvim-neo-tree [ file explorer ]` |
| `Alt + f` | `Focuses on neovim-tree if open otherwise opens and focuses` |

I will add more keybind details and docs later.

## Simple yet handy stuffs
### **Quick and Easy Code Sharing**  
Want to share a beautiful snippet of your code? Here’s a fun little trick just for you!

1. Enter **Visual Mode** by pressing `V` while in **Normal Mode**.
2. Select the part of your code you want to capture.
3. Run the `CarbonNow` command, and voilà~! A new browser tab will open, showing your selected code with customizable styles.

From there, you can tweak the design to your liking and share a gorgeous image of your code with the world!
Thanks to `https://carbon.now.sh/` and `ellisonleao/carbon-now.nvim` for making this possible ;)
