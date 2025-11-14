# dotfiles

There are highly customized to my tastes, so change whatever you wish

I may create a script to automate installing these dots, but for now, just move your current config files to a back up (i.e. nvim -> nvim_old), and symlink to these dotfiles.

For example:
```ln -s /path/to/these/dotfiles/neovim ~/.config/nvim```

## Requirements

- **[My DWM build](https://github.com/NicholasDomanico/dwm)** (or any DWM build with at least xrdb, statuscmd, and status2d patches)
- Pywal16 for generating color schemes
- feh for setting wallpaper
- dunst
- picom for window transparency
- rofi
- neovim
- yazi

## My Neovim setup

I have Neovim configured with Lazy plugin manager, and several plugins installed:

- barbar.nvim
- blink.cmp
- dashboard-nvim
- dropbar
- nvim-lspconfig
- lualine.nvim
- nvim-autopairs.lua
- nvim-colorizer.lua
- nvim-cursorline
- pywal16.nvim
- rainbow-delimiters.lua
- render-markdown.nvim
- nvim-treesitter-pairs
- nvim-treesitter
- yanky.nvim
- yazi.nvim



