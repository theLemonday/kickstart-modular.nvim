return {
    { -- Autoformat
        "stevearc/conform.nvim",
        lazy = false,
        keys = {
            {
                "<leader>f",
                function()
                    require("conform").format {
                        async = true,
                        lsp_fallback = true,
                    }
                end,
                mode = "",
                desc = "[F]ormat buffer",
            },
        },
        opts = {
            notify_on_error = false,
            format_on_save = function(bufnr)
                -- Disable "format_on_save lsp_fallback" for languages that don't
                -- have a well standardized coding style. You can add additional
                -- languages here or re-enable it for the disabled ones.
                local disable_filetypes = { c = true, cpp = true }
                return {
                    timeout_ms = 500,
                    lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
                }
            end,
            formatters_by_ft = {
                lua = { "stylua" },
                go = { "goimports", "gofumpt" },
                terraform = { "terraform_fmt" },
                tf = { "terraform_fmt" },
                ["terraform-vars"] = { "terraform_fmt" },
                python = {
                    "ruff_organize_imports",
                    -- To fix lint errors.
                    "ruff_fix",
                    -- To run the Ruff formatter.
                    "ruff_format",
                },
                nix = { "nixpkgs_fmt" },
                buf = { "buf" },
                javascript = { "prettierd" },
                typescript = { "prettierd" },
                sql = { "sql-formatter" },
                bash = { "shfmt" },
                yaml = { "yamlfix" },
                graphql = { "prettierd" },
                css = { "prettierd" },

                -- Conform can also run multiple formatters sequentially
                -- python = { "isort", "black" },
                --
                -- You can use a sub-list to tell conform to run *until* a formatter
                -- is found.
                -- javascript = { { "prettierd", "prettier" } },
            },
            formatters = {
                yamlfix = {
                    env = {
                        YAMLFIX_WHITELINES = 1,
                    },
                },
            },
        },
    },
}
-- vim: ts=2 sts=2 sw=2 et
