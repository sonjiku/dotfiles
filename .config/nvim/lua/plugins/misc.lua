-- Miscelaneous fun stuff
return {
    -- Comment with haste
    { "numToStr/Comment.nvim",
            opts = {}},
    -- Better buffer closing actions. Available via the buffers helper.
    { "kazhala/close-buffers.nvim",
        opts = {
            preserve_window_layout = { "this", "nameless" },
        },},
    { "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end },
}
