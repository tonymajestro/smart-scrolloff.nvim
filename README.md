# smart-scrolloff.nvim
Dynamically adjusts the [scrolloff](https://neovim.io/doc/user/options.html#'scrolloff') setting when resizing your Neovim window. The smart-scrolloff plugin lets you specify a percentage instead of a static value for scrolloff so that your scrolling experience is consistent across screens of different sizes or resolutions.

## Installation
The easiest way to install smart-scrolloff is with lazy.nvim:

```lua
-- lazy.nvim
--
-- scrolloff_percentage: controls how close the cursor can be to the top or bottom
--                       of the screen before scrolling begins
{
  "tonymajestro/smart-scrolloff.nvim"
  opts = {
    scrolloff_percentage = 0.2
  },
},
```
## Features
Automatically sets the [scrolloff](https://neovim.io/doc/user/options.html#'scrolloff') setting whenever the screen is resized.

Normally scrolloff is a static value, representing the number of lines to keep above or below the cursor when scrolling (when not at the top or bottom of the document). However if you change your font size or resize your window, scrolloff will stay the same resulting in an inconsistent scrolling experience.

With smart-scrolloff, your cursor will always be at the same place in the window when scrolling, regardless of window or font size.

