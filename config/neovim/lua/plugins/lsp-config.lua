return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {"clangd", "lua_ls"}
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require'lspconfig'.clangd.setup{}
            require'lspconfig'.lua_ls.setup{}
        end
    }
}
