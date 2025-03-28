require("llm").setup({
	backend = "ollama", -- backend ID, "huggingface" | "ollama" | "openai" | "tgi"
	model = "qwen2.5-coder", -- the model ID, behavior depends on backend
	url = "http://localhost:11434", -- the http url of the backend
	tokens_to_clear = { "<|endoftext|>" }, -- tokens to remove from the model's output
	-- parameters that are added to the request body, values are arbitrary, you can set any field:value pair here it will be passed as is to the backend
	request_body = {
		parameters = {
			max_new_tokens = 60,
			temperature = 0.2,
			top_p = 0.95,
		},
	},
	-- set this if the model supports fill in the middle
	fim = {
		enabled = true,
		prefix = "<fim_prefix>",
		middle = "<fim_middle>",
		suffix = "<fim_suffix>",
	},
	debounce_ms = 150,
	accept_keymap = "<Leader><Tab>",
	dismiss_keymap = "<S-Tab>",
	tls_skip_verify_insecure = false,
	tokenizer = nil, -- cf Tokenizer paragraph
	context_window = 4096, -- max number of tokens for the context window
	enable_suggestions_on_startup = false,
	enable_suggestions_on_files = "*", -- pattern matching syntax to enable suggestions on specific files, either a string or a list of strings
	disable_url_path_completion = false, -- cf Backend
})
