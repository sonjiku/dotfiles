-- Note Taking
return {
    {"vimwiki/vimwiki",
        branch = "dev",
        config = function()
            local notedir = vim.fn.expand('~/Documents/notes')
            vim.g.vimwiki_list = {{
                path = notedir
                ,syntax = 'markdown'
                ,ext = '.md' },
            {
                path = notedir .. "/music"
                ,syntax = 'markdown'
                ,ext = '.md' },
            {
                path = notedir .. "/tech"
                ,syntax = 'markdown'
                ,ext = '.md' },
            {
                path = notedir .. "/zettelkasten"
                ,syntax = 'markdown'
                ,ext = '.md' }
            }
        end
    },
}
