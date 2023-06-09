-- Fetch and setup colorscheme if available, otherwise just return 'default'
-- This should prevent Neovim from complaining about missing colorschemes on first boot
local function get_if_available(name, opts)
    local lua_ok, colorscheme = pcall(require, name)
    if lua_ok then

        pcall(colorscheme.setup, opts)
        -- colorscheme.setup(opts)
        return name
    end

    local vim_ok, _ = pcall(vim.cmd.colorscheme, name)
    if vim_ok then
        return name
    end

    return "default"
end

-- Uncomment the colorscheme to use
-- local colorscheme = get_if_available("catppuccin")
-- local colorscheme = get_if_available("calvera")
-- local colorscheme = get_if_available("omni")
-- local colorscheme = get_if_available("moonlight")
-- local colorscheme = get_if_available('gruvbox')
local colorscheme = get_if_available('rose-pine')
-- local colorscheme = get_if_available('everforest')
-- local colorscheme = get_if_available('melange')

return colorscheme
