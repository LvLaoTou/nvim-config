-- 设置主键为空格键
vim.g.mapleader = " "

-- 设置本地变量，简化配置
local keymap = vim.keymap

-- ---------- 视觉模式 ---------- ---
-- 设置快捷多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- 设置快捷但行移动
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 垂直新增窗口  split vertical
keymap.set("n", "<leader>sv", "<C-w>v")
-- 水平新增窗口 split horizontal
keymap.set("n", "<leader>sh", "<C-w>s")

-- 取消高亮 主键+空格
keymap.set("n", "<leader> ", ":nohl<CR>")

-- 切换buffer
keymap.set("n", "<C-L>", ":bnext<CR>")
keymap.set("n", "<C-H>", ":bprevious<CR>")

-- ---------- 插件 ---------- --
-- nvim-tree
-- 显示/隐藏文件目录树 
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
