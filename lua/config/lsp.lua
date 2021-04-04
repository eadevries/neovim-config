local lsp = require'lspconfig'
local lsp_status = require'lsp-status'

lsp_status.register_progress()

local buf_map =  vim.api.nvim_buf_set_keymap

local options = {noremap = true}

local function custom_attach (client,  bufnm)
    print("lsp attaching")
    lsp_status.on_attach(client)
    buf_map(bufnm, 'n', '<leader>dn', '<cmd>lua vim.lsp.diagnostic.goto_next()<cr>', options)
    buf_map(bufnm, 'n', '<leader>dp', '<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>', options)
    print("lsp attached")
end

lsp.bashls.setup{
	capabilities = lsp_status.capabilities,
    on_attach = custom_attach
}

lsp.cssls.setup{
	capabilities = lsp_status.capabilities,
    on_attach = custom_attach
}

lsp.denols.setup{
	capabilities = lsp_status.capabilities,
    on_attach = custom_attach
}

lsp.graphql.setup{
	capabilities = lsp_status.capabilities,
    on_attach = custom_attach
}

lsp.hls.setup{
	capabilities = lsp_status.capabilities,
    on_attach = custom_attach
}

lsp.pyright.setup{
	capabilities = lsp_status.capabilities,
    on_attach = custom_attach
}

lsp.rls.setup {
	capabilities = lsp_status.capabilities,
    on_attach = custom_attach,
    settings = {
        rust = {
            unstable_features = true,
            build_on_save = false,
            all_features = true,
        },
    },
}

lsp.tsserver.setup{}

-- Config for the Lua LSP
local USER = vim.fn.expand('$USER')
local sumneko_root_path = "/home/" .. USER .. "/.config/nvim/lua-language-server"
local sumneko_binary = "/home/" .. USER .. "/.config/nvim/lua-language-server/bin/Linux/lua-language-server"

lsp.sumneko_lua.setup{
	capabilities = lsp_status.capabilities,
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
    on_attach = custom_attach,
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
                path = vim.split(package.path, ";")
            },
            diagnostics = {
                globals = {'vim'}
            },
            workspace = {
                library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}
            }
        }
    }
}

-- TODO: Add status line for LSP based on lsp-status example

