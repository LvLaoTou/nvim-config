-- 禁用默认打开插件
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- 开启高亮显示
vim.opt.termguicolors = true

-- 空设置使用默认配置
require("nvim-tree").setup()
