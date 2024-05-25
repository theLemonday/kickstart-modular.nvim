return {
    "nvimtools/none-ls.nvim",
    opts = function()
        local null_ls = require "null-ls"

        return {
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.sql_formatter.with {
                    extra_args = {
                        "--config",
                        vim.fn.expand "~/.config/formatter/sql-formatter.json",
                    },
                },
                -- null_ls.builtins.diagnostics.eslint,
                null_ls.builtins.completion.spell,
                null_ls.builtins.diagnostics.hadolint,
                -- null_ls.builtins.formatting.terraform_fmt,
                --    null_ls.builtins.formatting.terraform_fmt,
                null_ls.builtins.diagnostics.terraform_validate,
                null_ls.builtins.formatting.prettierd,
                null_ls.builtins.diagnostics.buf,
                null_ls.builtins.formatting.buf,
                null_ls.builtins.formatting.shfmt,
            },
        }
    end,
}
