return {
    {
        dir = "~/dev/go.nvim",
        name = "go",
        ft = "go",
        -- dev = true,
        -- config = function()
        --   require("go.nvim")
        -- end,
        opts = {
            config = {
                tag = {
                    transform = false,
                },
            },
        },
    },
}
