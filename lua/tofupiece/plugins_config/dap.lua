require("dapui").setup()

local dap = require("dap")

vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {})
vim.keymap.set("n", "<Leader>dc", dap.continue, {})
