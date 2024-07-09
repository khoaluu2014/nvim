local function get_lsp_name()
	local msg = "LS Inactive"
	local buf_clients = vim.lsp.get_active_clients()
	if next(buf_clients) == nil then
		if type(msg) == "boolean" or #msg == 0 then
			return "LS Inactive"
		end
	end
	local buf_client_names = {}

	for _, client in pairs(buf_clients) do
		table.insert(buf_client_names, client.name)
	end

	local unique_client_names = vim.fn.uniq(buf_client_names)

	local language_servers = "[" .. table.concat(unique_client_names, ", ") .. "]"
	return language_servers
end

require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "auto",
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
				get_lsp_name,
				require("noice").api.status.command.get,
				cond = require("noice").api.status.command.has,
			},
		},
	},
})
