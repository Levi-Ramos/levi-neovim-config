# CheerfuleBeasts' Nvim configuration

<!--toc:start-->

- [Levi's own Neovim configuration](#levis-own-neovim-configuration)
  - [Additional plugins added](#additional-plugins-added)
  - [Keymaps added](#keymaps-added) - [cord.nvim](#cordnvim)
  <!--toc:end-->

## Additional plugins added

- cord.nvim | Discord rich presence plugin
- copilot.nvim | Github copilot plugin

## Keymaps added

I have some keymaps binded to the plugins I use, you can check them in the `lua/keymaps.lua` file.

### cord.nvim

- "D" : Opens discord panel in which-key
- "Dc" : "Connect to discord",
- "Dr" : "Reconnect to discord",
- "Dd" : "Disconnect from discord",
- "Dt" : "Toggle presence",
- "Ds" : "Show presence",
- "Dh" : "Hide presence",
- "Di" : "Show idle status",
- "Du" : "Unhide idle status",

### mini.surround

- "gsa" : Add surround
- "gsd" : Delete surround
- "gsf" : Find surround (to the right)
- "gsF" : Find surround (to the left)
- "gsh" : Highlight surround
- "gsr" : Replace surround
- "gsn" : update 'n_lines'

## Colorscheme

This neovim configuration is using the <a href="https://github.com/sainnhe/everforest">EverForest</a>
