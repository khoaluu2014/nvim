require("dapui").setup()

local dap = require("dap")
vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, {})
vim.keymap.set("n", "<F5>", dap.continue, {})
