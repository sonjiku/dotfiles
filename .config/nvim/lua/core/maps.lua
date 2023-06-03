local map = require("lib.key").map
local set_leader = require("lib.key").set_leader
local setopt = require("lib.config").setopt

setopt({timeoutlen = 400})
require("lib.key").set_leader(" ")


-- Help window
map('n', '<F1>', ':help index<CR><C-W>T:tabmove<CR>')
map('n', '<LEADER><F1>', ':Alpha<CR>')
-- Toggle numbercolumn
map('n', '<F2>', ':set relativenumber!<CR>:set number!<CR>')
-- Toggle folds
map('n', '<LEADER><F2>', ':set foldenable!<CR>')
-- Toggle spellcheck
map('n', '<F3>', ':setlocal spell! spelllang=en,el<CR>')
-- Source current file
map('n', '<F4>', ':luafile %<CR>')
-- Edit config
map('n', '<LEADER><F4>', ':e ~/.config/nvim/init.lua<CR>')
map('n', '<LEADER>cd', ':lcd %:h<CR>')
map('n', '<LEADER>w', ':w<CR>')
-- Timestamp
map('n', 'ts', ":r! date '+\\%d-\\%m-\\%Y \\%H:\\%M'<CR>")

-- Session saving and loading     
map('n', '<F12>', 'source ~/.cache/nvim/sessions/')
map('n', '<LEADER><F12>', ':wall<CR>:mksession! ~/.cache/nvim/sessions/')

-- Tab
map('n', '<LEADER><F11>', '<C-w>T')
map('n', '<LEADER><SPACE><F12>',':tab ball<CR>')

-- Better window navigation
map("n", "<C-h>", "<C-W>h")
map("n", "<C-j>", "<C-W>j")
map("n", "<C-k>", "<C-W>k")
map("n", "<C-l>", "<C-W>l")
-- Resize with arrows
map("n", "<C-UP>", ":resize -2<CR>")
map("n", "<C-DOWN>", ":resize +2<CR>")
map("n", "<C-LEFT>", ":vertical resize -2<CR>")
map("n", "<C-RIGHT>", ":vertical resize +2<CR>")

-- Deleting buffers
map('n', '<LEADER>z', ':bdelete<CR>')
map('n', '<LEADER>Z', ':w<CR>:bdelete<CR>')
local buffers = require("lib.buffers")
map("n", "<leader>db", buffers.delete_this, "Current buffer")
map("n", "<leader>do", buffers.delete_others, "Other buffers")
map("n", "<leader>da", buffers.delete_all, "All buffers")
-- Navigate buffers
map("n", "L", ":bnext<CR>")
map("n", "H", ":bprevious<CR>")

-- QOL
map('n', '-', '$')
map('n', 'Y', 'y$')
map('n', 'j', 'gj')
map('n', 'k', 'gk')
-- Empty lines
map('n', '<LEADER>o', 'mzo<ESC>`z')
map('n', '<LEADER>O', 'mzO<ESC>`z')
-- Select all
map('n', 'gV', "'[v']$")
-- Go to matching symbol
map('n', '<M-TAB>', '%')
-- Cursor doesn't move
map('n', 'J', "mzJ`z")

-- Easy tabbing
map('n', '<TAB>', '>>')
map('n', '<S-TAB>', '<<')
map("v", "<TAB>", ">gv")
map("v", "<S-TAB>", "<gv")

-- Move text up and down
map('n', '<M-k>', ':m .-2<CR>V=')
map('n', '<M-j>', ':m .+1<CR>V=')
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
--map("v", "p", '"_dP')

-- Better terminal navigation
map("t", "<C-H>", "<C-\\><C-N><C-W>h")
map("t", "<C-J>", "<C-\\><C-N><C-W>j")
map("t", "<C-K>", "<C-\\><C-N><C-W>k")
map("t", "<C-L>", "<C-\\><C-N><C-W>l")



-- Switch between light and dark modes
map("n", "<leader>ut", function()
	if vim.o.background == "dark" then
		vim.o.background = "light"
	else
		vim.o.background = "dark"
	end
end, "Toggle between light and dark themes")

-- Clear after search
map("n", "<leader>ch", "<cmd>nohl<cr>", "Clear highlights")

require('core.keymaps.gr')
