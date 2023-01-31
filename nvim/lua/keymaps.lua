-- Aliases

local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent= true}
local cmd = vim.cmd


-- Desactivamos las teclas del cursor 
map('', '<up>', '<nop>', {noremap = true})
map('', '<down>', '<nop>', {noremap = true})
map('', '<left>', '<nop>', {noremap = true})
map('', '<right>', '<nop>', {noremap = true})


-- Activamos movimientos en modo INSERT		
map ('i', '<C-h>', '<left>', default_opts)
map ('i', '<C-j>', '<down>', default_opts)
map ('i', '<C-k>', '<up>', default_opts)
map ('i', '<C-l>', '<right>', default_opts)


-- nvim-tree
map('n', '<C-n>', ':Neotree toggle<CR>', default_opts)       -- open/close

-- Faster scrolling
--map('n', '<C-j>','<C-e>10', default_opts)	
--map('n', '<C-k>','<C-y>10', default_opts)	
--vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- on hesitation, bring up the panel
map('n', '<C-s>', ':SidebarNvimToggle<CR>', default_opts)

--nvim-fzf-lua
map('n', '<C-p>', ':FzfLua files<CR>', default_opts)       -- open/close

-- Vista tag-viewer
map('n', '<C-q>', ':Vista!!<CR>', default_opts)   -- open/close
map('i', '<C-q>', ':Vista!!<CR>', default_opts)   -- open/close
map('n', '<leader>m', ':Vista!!<CR>', default_opts)


map('n', '<leader>tf', ':Telescope file_browser<CR>', default_opts)
map('n', '<leader>ts', ':Telescope symbols<CR>', default_opts)

-- Rest
map("n", "<leader>rr", ":lua require('rest-nvim').run()<CR>", { noremap = true })


-- Trouble

map("n", "<leader>xx", "<cmd>Trouble<cr>", {silent = true, noremap = true})
map("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", {silent = true, noremap = true})
map("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", {silent = true, noremap = true})
map("n", "<leader>xl", "<cmd>Trouble loclist<cr>", {silent = true, noremap = true})
map("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", {silent = true, noremap = true})
map("n", "gR", "<cmd>Trouble lsp_references<cr>", {silent = true, noremap = true})
