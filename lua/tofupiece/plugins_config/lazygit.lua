require("telescope").load_extension("lazygit")
vim.keymap.set("n", "<leader>lg", ":LazyGit<CR>", {noremap=true, silent=true})
