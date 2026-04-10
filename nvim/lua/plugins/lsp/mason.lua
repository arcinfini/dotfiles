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
    "KingMichaelPark/mason.nvim",
    branch = "feat/add-uv-as-pypi-source",
    commit = "6ca3f5f",
    opts = { pip = { use_uv = true } },
}

local mason_lspconfig = {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "lua_ls",
            "rust_analyzer",
            "ruff",
            "ty",
            "stylua",
        },
    },
    dependencies = { "KingMichaelPark/mason.nvim" },
}

return {
    mason,
    mason_lspconfig,
}
