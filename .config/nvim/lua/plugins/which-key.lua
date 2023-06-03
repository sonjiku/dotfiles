return   {
    "folke/which-key.nvim",
    config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        require("which-key").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        })
        require("which-key").register({
            ["<leader>"] = {
                f = { name = "File" },
                d = { name = "Delete/Close" },
                q = { name = "Quit" },
                s = { name = "Search" },
                l = { name = "LSP" },
                u = { name = "UI" },
                b = { name = "Debugging" },
                g = { name = "Git" },
            }
        })
    end,
}
