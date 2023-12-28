-- catppuccin
require("catppuccin").setup({
    flavour = "frappe",
    transparent_background = true,
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" },
        functions = { "italic" },
        keywords = { "italic" },

    },
    integrations = {
        indent_blankline = {
            enabled = true,
            scope_color = 'frappe',
            colored_indent_levels = true
        },
        mini = {
            enabled = true,
            indentscope_color = 'frappe'
        },
        noice = true,
        notify = true
    },
})
-- kanagawa default
require("kanagawa").setup({
    transparent = true
})
vim.o.termguicolors = true
vim.o.background = "dark"
vim.cmd("colorscheme catppuccin")

