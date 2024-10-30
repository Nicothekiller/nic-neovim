# Nic-Neovim

My neovim configs. They are based mostly off of kickstart.nvim but with heavy changes to the file structure (to have multiple files instead of 1 for better clarity/structure).

Feel free to use any of the files, but If you are new to Neovim it would probably be better to look elsewhere.

To manage your plugins use :Lazy, to download tools for your languages (debugger, lsp, etc.) use :Mason.

## Dependencies

Some general utilities are needed, mainly:
- A nerd font (so icons display properly).
- make sure you have `git make unzip gcc ripgrep fd neovim`, else download whats missing with your package manager.
- tooling for your language of choice (go, python, lua, c, c++, etc.)

## How to download

```sh
git clone https://github.com/Nicothekiller/nic-neovim "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```
And now simply open it on your terminal with `nvim`
