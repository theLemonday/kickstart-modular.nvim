return {
    {
        "nvimdev/dashboard-nvim",
        event = "VimEnter",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "folke/persistence.nvim",
        },
        opts = function()
            local opts = {
                theme = "hyper",
                config = {
                    week_header = {
                        enable = true,
                    },
                    shortcut = {
                        {
                            desc = "💤 Lazy",
                            group = "@property",
                            action = "Lazy",
                            key = "l",
                        },
                        -- { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
                        {
                            desc = " Last session",
                            group = "Number",
                            action = 'lua require("persistence").load()',
                            key = "s",
                        },
                        {
                            icon = " ",
                            icon_hl = "@variable",
                            desc = "Files",
                            group = "Label",
                            action = "Telescope find_files",
                            key = "f",
                        },
                        {
                            desc = " Quit",
                            group = "DiagnosticHint",
                            action = "quit",
                            key = "q",
                        },
                        -- {
                        --   desc = ' Apps',
                        --   group = 'DiagnosticHint',
                        --   action = 'Telescope app',
                        --   key = 'a',
                        -- },
                        -- {
                        --   desc = ' dotfiles',
                        --   group = 'Number',
                        --   action = 'Telescope dotfiles',
                        --   key = 'd',
                        -- },
                    },
                },
            }

            -- close Lazy and re-open when the dashboard is ready
            if vim.o.filetype == "lazy" then
                vim.cmd.close()
                vim.api.nvim_create_autocmd("User", {
                    pattern = "DashboardLoaded",
                    callback = function()
                        require("lazy").show()
                    end,
                })
            end

            return opts
        end,
    },
}
