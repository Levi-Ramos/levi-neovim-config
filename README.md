# Levi's own Neovim configuration

<!--toc:start-->

- [Levi's own Neovim configuration](#levis-own-neovim-configuration)
  - [Additional plugins added](#additional-plugins-added)
  - [Keymaps bindings](#keymaps-added)
  - [cord.nvim](#cordnvim)
  <!--toc:end-->

## Additional plugins

- cord.nvim : Discord rich presence plugin
- copilot.nvim : Github copilot plugin
- harpoon2 : fast file navigation plugin
- surround : surround actions plugin
- flutter-tools : flutter tools plugin for flutter environment

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

### mini.surround (default mappings)

- "gsa" : Add surround
- "gsd" : Delete surround
- "gsf" : Find surround (to the right)
- "gsF" : Find surround (to the left)
- "gsh" : Highlight surround
- "gsr" : Replace surround
- "gsn" : update 'n_lines'

### flutter-tools

- "Frr" : Run Flutter session
- "Fd" : Show flutter devices
- "Fe" : show flutter emulators
- "Fre" : Reload flutter session
- "Frs" : Restart flutter session
- "Fq" : quit flutter session
- "Fo" : Toggle flutter outline
- "Fl" : Restart flutter lsp (Language server protocol)

## Color Scheme

This neovim configuration is using the [EverForest](https://github.com/sainnhe/everforest)

## Work in progress

- integrate tmux into workflow
- add multi cursor plugin
- connect to discord rich presence on launch
