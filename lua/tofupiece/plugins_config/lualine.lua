require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'catppuccin',
        component_separators = "",
    },
    sections = {
        lualine_a = {
            {
                "mode",
            },
        },
        lualine_c = {
            {
                "filename",
                file_status = true,
            },
        },
        lualine_x = {
            {
                require("noice").api.status.command.get,
                cond = require("noice").api.status.command.has,
            },
        },
    }
}
