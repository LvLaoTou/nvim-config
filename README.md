# nvim-config

#### 介绍
nvim配置，基于lua编写，关于neovim中使用lua介绍[官网](https://neovim.io/doc/user/lua-guide.html#lua-guide)

#### 软件架构
|---init.lua    初始化文件，主要作为管理核心配置和插件
|---lua    lua脚本，所有lua脚本文件都在这个目录下，方便管理
    |---core    核心配置
        |---keymaps.lua 快捷键配置
        |---options.lua 操作配置
    |---plugins 插件管理
        |---autopairs.lua   自动括号[官网](https://github.com/windwp/nvim-autopairs)
        |---bufferline.lua  状态栏[官网](https://github.com/akinsho/bufferline.nvim)
        |---cmp.lua     自动补全[官网](https://github.com/hrsh7th/nvim-cmp)
        |---comment.lua     快捷注释[官网](https://github.com/numToStr/Comment.nvim)
        |---gitsigns.lua    git提示[官网](https://github.com/lewis6991/gitsigns.nvim)
        |---lsp.lua     语法提示[mason](https://github.com/williamboman/mason.nvim)
        |---lualine.lua     状态栏插件[官网](https://github.com/nvim-lualine/lualine.nvim)
        |---packer.lua      插件管理工具[官网](https://github.com/wbthomason/packer.nvim)
        |---telescope.lua   文件检索[官网](https://github.com/nvim-telescope/telescope.nvim)
        |---tree.lua    目录树插件[官网](https://github.com/nvim-tree/nvim-tree.lua)
        |---treesitter.lua      语法高亮[官网](https://github.com/nvim-treesitter/nvim-treesitter)
|---plugin  packer插件管理自动生成及管理的目录


#### 安装教程
1.  将此仓库clone到~/.config/nvim/下
```git
git clone git@gitee.com:lvlaotou/nvim-config.git ~/.config/nvim/
```
2.  安装必要的依赖程序
```shell
# 安装依赖
yay -S xclip git ttf-hack-nerd gcc ripgrep npm
# 配置npm镜像源
npm config set registry https://registry.npmmirror.com
```
    - xclip 与系统剪贴板通信程序
    - git 版本控制，因为插件都是从github下载
    - ttf-hack-nerd 依赖字体 [字体官网](https://www.nerdfonts.com/)|[AUR](https://archlinux.org/groups/any/nerd-fonts/) (插件：nvim-tree | nvim-web-devicons)
    - gcc 编译器 （插件：treesitter）
    - ripgrep 递归文件检索  （插件：telescope）
    - npm js包管理器    （插件：markdown-preview）
3.  执行nvim安装插件

#### 使用说明
- 快捷键，只列举自定义的快捷键或者插件自带的快捷键 参考~/.config/nvim/lua/core/keymaps.lua
    - 窗口切换 
        - 水平新增窗口 {主键}+sh
        - 垂直新增窗口 {主键}+sv 
        - 向左切换窗口 Ctrl+h
        - 向下切换窗口 Ctrl+j
        - 向上切换窗口 Ctrl+k
        - 向右切换窗口 Ctrl+l
    - 目录树
        - 显示/隐藏目录树 {主键}+e
        - 新建文件 在目录树上按a然后在底部输入文件名
    - 高亮
        - 取消高亮 连续按两次{主键}
    - 移动
        - 向上移动行 选中要移动的行后按shift+k向上移动选中的内容
        - 向下移动行 选中要移动的行后按shift+j向下移动选中的内容
    - 注释
        - 注释单行 gcc
        - 注释多行 选中行后按gc
