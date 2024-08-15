# smart-scrolloff.nvim
Smart scroll is a plugin that enables you to control the [scrolloff](https://neovim.io/doc/user/options.html#'scrolloff') setting using percentages instead of static line numbers. This is a more intuitive way to handle scrolling, especially as you move between laptops, monitors, and resized windows and font sizes. Smart scrolloff will always keep your scrolling experience consistent.

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
- Set the [scrolloff](https://neovim.io/doc/user/options.html#'scrolloff') feature to a percent instead of a static line number. This will ensure neovim starts scrolling whenever you are within `scrolloff_percentage` from the top or bottom of the window.

- Automatically adjusts the scrolloff value when resizing the window or adjusting font size to ensure a consistent scrolling experience.
