-- leader 键设置为空格                                    
vim.g.mapleader = " " 

-- 默认的键位设置函数太长了，所以这里将它们重新引用一下
vim.keybinds = {    
    gmap = vim.api.nvim_set_keymap,    
    bmap = vim.api.nvim_buf_set_keymap,    
    dgmap = vim.api.nvim_del_keymap,    
    dbmap = vim.api.nvim_buf_del_keymap,    
    opts = {noremap = true, silent = true}    
}

-- 正常模式下按 空格+回车 取消高亮显示    
vim.keybinds.gmap("n", "<ESC>", ":nohlsearch<CR>", vim.keybinds.opts)

-- 通过 leader cs 切换拼写检查    
vim.keybinds.gmap("n", "<leader>cs", "<cmd>set spell!<CR>", vim.keybinds.opts)

-- 个人常用映射
vim.keybinds.gmap("n", "<C-j>", "5j", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-k>", "5k", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-s>", ":wa<CR>", vim.keybinds.opts)
-- vim.keybinds.gmap("n", "<leader>w", ":bd<CR>", vim.keybinds.opts)
-- vim.keybinds.gmap("n", "<leader>q", ":bd!<CR>", vim.keybinds.opts)

-- 修改分屏大小    
vim.keybinds.gmap("n", "<C-up>", "<cmd>res +1<CR>", vim.keybinds.opts)    
vim.keybinds.gmap("n", "<C-down>", "<cmd>res -1<CR>", vim.keybinds.opts)    
vim.keybinds.gmap("n", "<C-left>", "<cmd>vertical resize-1<CR>", vim.keybinds.opts)    
vim.keybinds.gmap("n", "<C-right>", "<cmd>vertical resize+1<CR>", vim.keybinds.opts)

