require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {
            config = {
                true,
            }
        },
        ["core.dirman"] = {
            config = {
                workspaces = {
                    notes ="~/notes",
                    work = "~/notes/work",
                    home = "~/notes/home",
                }
            }
        }
    }
}
