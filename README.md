# CheerfulBeasts's Neovim configuration

<!--toc:start-->

- [CheerfulBeasts's Neovim configuration](#levis-own-neovim-configuration)
  - [Requirements](#requirements)
  - [Features](#features)
  - [Keymaps bindings](#keymaps-added)
  - [cord.nvim](#cordnvim)
  <!--toc:end-->

## Requirements

- Neovim 0.10
- rustc
- Clang
- any nerdfont (for windows, protofont works best for me)

## Installation

### For windows

1. Clone this inside your `Appdata/local` directory

```git
git clone https://github.com/Levi-Ramos/levi-neovim-config.git
```

2. Go to the configuration directory and initiate LazyVim. This will install the lazyvim dependencies (be sure to configure your nvim in system variables)

```
nvim .
```

3. You're good to go!!

### For Linux

1. Clone this inside your `.config/nvim` directory

```git
git clone https://github.com/Levi-Ramos/levi-neovim-config.git
```

2. Go to the configuration directory and initiate LazyVim. This will install Lazyvim dependencies

```
nvim .
```

## Features

- Flutter support
- Discord rich presence
- Surround text objects
- Markdown Preview

## Keymaps added

I have some keymaps binded to the plugins I use, located at `lua/keymaps.lua`.

### cord.nvim

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

### flutter-bloc

- "Fb" : Bloc group
- "Fbb" : Create bloc
- "Fbc" : Create cubit

## Color Scheme

This neovim configuration is using the [EverForest](https://github.com/sainnhe/everforest)

## Work in progress

- add multi cursor plugin
- connect to discord rich presence on launch
