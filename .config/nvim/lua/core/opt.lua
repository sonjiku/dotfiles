require("lib.env")
local setopt = require("lib.config").setopt

-- General
local o_gen = {
    compatible = false,
    modelines = 0,
    fileencoding = "utf-8",
    mouse = '',
    clipboard = 'unnamedplus',
    history = 100,
    shada = "'1000,f1,<500,:50,@50,/20,n"
	.. homed
	.. "/.local/share/nvim/shada/main.shada",
    directory = homed .. "/.local/share/nvim/swap",
    swapfile = false,
    backupdir = homed .. "/.local/share/nvim/backup",
    backup = false,
    writebackup = false,
    undodir = homed .. "/.local/share/nvim/undo",
    undofile = true,
    undolevels = 1000,
    sessionoptions = "buffers,tabpages,winsize,options,folds",
}
setopt(o_gen)

-- Performance
local o_perf = {
    updatetime = 300,
    hidden = true,
    lazyredraw = true,
    ttyfast = true,
    synmaxcol = 240,
}
setopt(o_perf)

-- UI
local o_ui = {
    number = true,
    relativenumber = true,
    colorcolumn = '80',
    cursorline = true,
 -- wrap on word boundary
    linebreak = true,  
 -- Always show tabline
    showtabline = 2,
 -- Always show statusline
    laststatus = 2,
    showcmd = false,
    cmdheight = 2,
    showmode = false,
    scrolloff = 5,
    wildmenu = true,
    wildignore = "*.o,*.class,*.pyc,*.jpg,*.jpeg,*.png,*.gif,*.zip,*.DS_Store",
 -- Pop-Up-Menu height
    -- pumheight = 100,
 -- mostly just for cmp
    completeopt = { "menuone", "noselect" },
    splitright = true, 
    splitbelow = true, 
    showmatch = true,  
    incsearch = true,  
    ignorecase = true, 
    smartcase = true,  
    hlsearch = true,
}
setopt(o_ui)

-- Folds
local o_fold = {
    foldenable = false,
    foldmethod = 'indent',
    foldlevelstart = 0,
    foldnestmax = 3,
}
setopt(o_fold)

-- Indent
local o_ind = {
 -- Make tabs spaces
    expandtab = true,
 -- Full tab width in characters
    tabstop = 8,
 -- Indent width
    shiftwidth = 4,
 -- Stupid nonsense
    softtabstop = -1,
 -- Round indent to multiple of shiftwidth
    shiftround = true,
 -- Stupid
    smarttab = true,
 -- Auto indent new lines
    autoindent = true,
 -- Do it smartly
    smartindent = true,
}
setopt(o_ind)

-- Syntax and ft features
vim.cmd [[
    syntax enable
    filetype indent on
    filetype plugin on
    set whichwrap+=<,>,[,],h,l
]]

-- Theme
vim.cmd [[set termguicolors background=dark]]
local colorscheme = require("lib.colorscheme")
print( colorscheme)
vim.cmd.colorscheme(colorscheme)


-- vim.cmd "hi Normal guibg=0 ctermbg=0" -- Make background color same as terminal in case of transparency
