local M = {
    -- colorscheme = "catppuccin",
    lsp = {
        formatting = {
            -- format on save
            format_on_save = true
        },
        setup_handlers = {
            -- add custom handler
            tsserver = function(_, opts)
                require("typescript").setup { server = opts }
            end
        }
    },
    plugins = {
        "jose-elias-alvarez/typescript.nvim", -- add lsp plugin
        {
            "williamboman/mason-lspconfig.nvim",
            opts = {
                ensure_installed = { "tsserver" } -- automatically install lsp
            }
        },

    }
}

return M
