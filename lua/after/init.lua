local vim = vim
local g = vim.g
local opt = vim.opt

-- 代码折叠
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false
opt.foldlevel = 99

vim.keymap.set("n", "<" ..g.space_lhs .. "-e>", ":Telescope buffers<cr>")
