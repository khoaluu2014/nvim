require("catppuccin").setup({
  flavour = "mocha",
  transparent_background = true,
  styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = { "italic" },
    functions = { "italic" },
    keywords = { "italic" },

  },
})

vim.o.termguicolors = true
vim.o.background = "dark"
vim.cmd[[colorscheme catppuccin]]

