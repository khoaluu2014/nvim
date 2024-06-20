-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Add remap
require("tofupiece.remap")
-- Add editor options
require("tofupiece.options")
-- Add plugins
require("tofupiece.plugins")
-- Add plugins configs
require("tofupiece.plugins_config")
