return {
    -- "smjonas/inc-rename.nvim",
    -- opts = {},
    -- init = function()
    --     vim.keymap.set("n", "<f2>", function()
    --         return ":IncRename " .. vim.fn.expand "<cword>"
    --     end, { expr = true })
    -- end,
    {
        "ThePrimeagen/refactoring.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        opts = {},
        -- keys = {
        --     {
        --         "<leader>rf",
        --         function()
        --             require("refactoring").refactor "Extract Function"
        --         end,
        --         "x",
        --         desc = "Extract [F]unction",
        --     },
        --     {
        --         "<leader>rF",
        --         function()
        --             require("refactoring").refactor "Extract Function To File"
        --         end,
        --         "x",
        --         desc = "Extract [F]unction To [File]",
        --     },
        --     {
        --         "<leader>rv",
        --         function()
        --             require("refactoring").refactor "Extract Variable"
        --         end,
        --         "x",
        --         desc = "Extract [V]ariable",
        --     },
        --     {
        --         "<leader>rif",
        --         function()
        --             require("refactoring").refactor "Inline Function"
        --         end,
        --         "n",
        --         desc = "[I]nline [F]unction",
        --     },
        --     {
        --         "<leader>riv",
        --         function()
        --             require("refactoring").refactor "Inline Variable"
        --         end,
        --         { "n", "x" },
        --         desc = "[I]nline [V]ariable",
        --     },
        --     {
        --         "<leader>rb",
        --         function()
        --             require("refactoring").refactor "Inline Block"
        --         end,
        --         { "n", "x" },
        --         desc = "[R]efactor [B]lock",
        --     },
        --     {
        --         "<leader>rB",
        --         function()
        --             require("refactoring").refactor "Extract Block To File"
        --         end,
        --         { "n", "x" },
        --         desc = "[R]efactor [B]lock To File",
        --     },
        -- },
    },
}
