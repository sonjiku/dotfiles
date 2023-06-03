vim.cmd [[
    augroup _general
	au!
	autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR> 
	autocmd FileType qf set nobuflisted
	autocmd FileType help only
	autocmd TextYankPost * silent!lua require('vim.highlight').on_yank({higroup = 'Visual', timeout = 200}) 
	autocmd BufWinEnter * set formatoptions-=cro
    augroup end
]]

-- Spellchecking and autowrapping lines
vim.cmd [[
    augroup _git
	au!
	autocmd FileType gitcommit,markdown setlocal wrap
	autocmd FileType gitcommit,markdown setlocal spell spelllang=en,el
    augroup end
]]

-- Filetype dependent tabs and line-lengths
vim.cmd [[
    augroup _ft_tabs
	au!
        autocmd FileType html,python,ruby,javascript,css set et sw=2 ts=4 | au BufUnload <buffer> set et! sw=4 ts=8
        autocmd FileType html,javascript set colorcolumn=120 | au BufUnload <buffer> set colorcolumn=80
    augroup end
]]

-- Auto resize splits as window is resized
vim.cmd [[
    augroup _au_resize
	au!
	autocmd VimResized * tabdo wincmd = 
    augroup end
]]

-- Alpha
vim.cmd [[
    augroup _alpha
	au!
	au FileType alpha set showtabline=0 laststatus=0 noruler | au BufUnload <buffer> set showtabline=2 laststatus=2 ruler
    augroup end
]]

vim.cmd [[command! Term :botright vsplit term://$SHELL]]
-- Autoformat
-- augroup _au_format
-- autocmd!
-- autocmd BufWritePre * lua vim.lsp.buf.formatting()
-- augroup end
-- augroup _term
-- autocmd TermOpen * setlocal listchars= nonumber norelativenumber nocursorline
-- autocmd TermOpen * startinsert
-- autocmd BufLeave term://* stopinsert
-- augroup end
