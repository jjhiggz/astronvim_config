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
        {
            "kylechui/nvim-surround",
            -- tag = "*", -- Use for stability; omit to use `main` branch for the latest features
            lazy = false,
            config = function()
                require("nvim-surround").setup({
                    -- Configuration here, or leave empty to use defaults
                })
            end,
        },
    },
    mappings = {
        n = {
            ["<leader>ga"] = { "<cmd>Gitsigns<cr>", desc = "Gitsigns" },
        }
    }
}

return M
