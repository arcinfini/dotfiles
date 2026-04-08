--[[
--
-- mason-org has these two plugins. mason handles installing language
-- servers. and mason-lspconfig acts as a the bridge between the two.
-- it will install the required servers defined by the user and then
-- enable them. The configuration is defined in the nvim-lspconfig
-- plugin.
--
--]]

local mason = {
    "mason-org/mason.nvim", opts = {}
}

local mason_lspconfig = {
    "mason-org/mason-lspconfig.nvim", 
    opts = {
        ensure_installed = {
            "lua_ls",
            "rust_analyzer",
        }
    },
    dependencies = { "mason-org/mason.nvim" }
}

return {
    mason,
    mason_lspconfig
}
