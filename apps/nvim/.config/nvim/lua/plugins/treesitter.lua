return {
    "nvim-treesitter/nvim-treesitter",
    tag = "v0.10.0",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function()
        local configs = require("nvim-treesitter")

        configs.setup({
            ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query", "python", "rust", "bash" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
