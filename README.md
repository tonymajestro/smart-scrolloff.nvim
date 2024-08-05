# smart-scrolloff.nvim
Neovim plugin that will dynamically adjust the [scrolloff](https://neovim.io/doc/user/options.html#'scrolloff') setting.

## Installation
The easiest way to install smart-scrolloff is with lazy.nvim:

```lua
-- lazy.nvim
{
  "tonymajestro/smart-scrolloff.nvim"
  opts = {
    scrolloff_percentage = 0.2
  },
},
```
## Features
The smart-scrolloff plugin automatically sets the [scrolloff](https://neovim.io/doc/user/options.html#'scrolloff') setting whenever the screen is resized. Normally scrolloff is a static value, representing the number of lines to keep above or below the cursor when scrolling (when not at the top or bottom of the document). However if you change your font size or resize your window, scrolloff will stay the same resulting in an inconsistent scrolling experience. With smart-scrolloff, your cursor will always be at the same place in the window when scrolling, regardless of window or font size.
