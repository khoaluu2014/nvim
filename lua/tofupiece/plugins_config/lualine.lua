require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'catppuccin',
    },
    sections = {
        lualine_x = {
            {
                require("noice").api.statusline.mode.get,
                cond = require("noice").api.statusline.mode.has,
                color = { fg = "#ff9e64" },
            }
        },
        lualine_a = {
            {
                'filename',
                path = 1,
            }
        }
    }
}
