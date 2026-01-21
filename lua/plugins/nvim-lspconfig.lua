require 'os'

vim.keymap.set('n', '<F2>', vim.lsp.buf.rename)

local servers = { 'clangd', 'gopls', 'terraformls', 'rls', 'ruff' }
for _, lsp in ipairs(servers) do
	vim.lsp.enable(lsp)
end

local function exists(file)
	local ok, err, code = os.rename(file, file)
	if not ok then
		if code == 13 then
			-- Permission denied, but it exists
			return true
		end
	end
	return ok, err
end

local jedi_environment
if exists(".venv" .. "/") then
	jedi_environment = ".venv"
end
vim.lsp.config['pylsp'] = {
	settings = {
		pylsp = {
			plugins = {
				autopep8 = {
					enabled = false
				},
				jedi = {
					enabled = true,
					environment = jedi_environment,
				},
				mccabe = {
					enabled = false
				},
				pycodestyle = {
					enabled = false
				},
				pyflakes = {
					enabled = false
				},
				yapf = {
					enabled = false
				},
			}
		}
	}
}
vim.lsp.enable('pylsp')

vim.lsp.config['lua_ls'] = {
	settings = {
		Lua = {
			runtime = { version = 'LuaJIT' },
			workspace = {
				checkThirdParty = false,
				library = { vim.env.VIMRUNTIME }
			},
		}
	}
}
vim.lsp.enable('lua_ls')

vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
	pattern = { '*.lua', '*.py', '*.pyi', '*.tf', '*.tfvars' },
	callback = function()
		vim.lsp.buf.format({ async = false })
	end,
})
vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
	pattern = { '*.go' },
	callback = function()
		local params = vim.lsp.util.make_range_params()
		params.context = { only = { "source.organizeImports" } }
		-- buf_request_sync defaults to a 1000ms timeout. Depending on your
		-- machine and codebase, you may want longer. Add an additional
		-- argument after params if you find that you have to write the file
		-- twice for changes to be saved.
		-- E.g., vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, 3000)
		local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params)
		for cid, res in pairs(result or {}) do
			for _, r in pairs(res.result or {}) do
				if r.edit then
					local enc = (vim.lsp.get_client_by_id(cid) or {}).offset_encoding or "utf-16"
					vim.lsp.util.apply_workspace_edit(r.edit, enc)
				end
			end
		end
		vim.lsp.buf.format({ async = false })
	end
})
