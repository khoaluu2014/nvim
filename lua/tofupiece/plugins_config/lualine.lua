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
            },
            {
                require("noice").api.status.command.get,
                cond = require("noice").api.status.command.has,
            },
        },
        lualine_a = {
            {
                'filename',
                path = 1,
            }
        }
    }
}
