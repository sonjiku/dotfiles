cmd = vim.cmd; 
api = vim.api; 
lsp = vim.lsp; 
fn = vim.fn;   
g = vim.g;     
opt = vim.opt; 
homed = os.getenv("HOME")

-- Python Enable
g.python3_host_prog = "/usr/bin/python3"
g.python_host_prog = "/usr/bin/python2"

-- Netrw
g.netrw_home = homed .. '/.cache/vim/'
g.netrw_banner = 0 -- Disables Banner
--g.netrw_browse_split=4 -- Open in prior window
g.netrw_altv = 1 -- Open splits to the right
g.netrw_liststyle = 0 -- Tree View
--g.netrw_list_hide = fn.['netrw_gitignore#Hide']()
--g.netrw_list_hide.=',\(^\|\s\s)\zs\.\S\+'
g.netrw_winsize = -25 -- absolute width of netrw window
--g.netrw_sort_sequence = '[\/]$,*' -- Directories on the top, files below
