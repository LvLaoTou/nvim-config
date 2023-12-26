# nvim-config

#### 介绍
nvim配置，基于lua编写，关于neovim中使用lua介绍[官网](https://neovim.io/doc/user/lua-guide.html#lua-guide)

#### 软件架构
|--- init.lua    初始化文件，主要作为管理核心配置和插件  
|--- lua    lua脚本，所有lua脚本文件都在这个目录下，方便管理  
    &ensp;&ensp;&ensp;&ensp;|--- core    核心配置  
    &ensp;&ensp;&ensp;&ensp;|--- keymaps.lua 快捷键配置  
    &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;|--- options.lua 操作配置  
    &ensp;&ensp;&ensp;&ensp;|---plugins 插件管理  
    &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;|--- autopairs.lua   自动括号[官网](https://github.com/windwp/nvim-autopairs)  
    &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;|--- bufferline.lua  状态栏[官网](https://github.com/akinsho/bufferline.nvim)  
    &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;|--- cmp.lua     自动补全[官网](https://github.com/hrsh7th/nvim-cmp)  
    &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;|--- comment.lua     快捷注释[官网](https://github.com/numToStr/Comment.nvim)  
    &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;|--- gitsigns.lua    git提示[官网](https://github.com/lewis6991/gitsigns.nvim)  
    &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;|--- lsp.lua     语法提示[mason](https://github.com/williamboman/mason.nvim)  
    &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;|--- lualine.lua     状态栏插件[官网](https://github.com/nvim-lualine/lualine.nvim)  
    &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;|--- packer.lua      插件管理工具[官网](https://github.com/wbthomason/packer.nvim)  
    &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;|--- telescope.lua   文件检索[官网](https://github.com/nvim-telescope/telescope.nvim)  
    &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;|--- tree.lua    目录树插件[官网](https://github.com/nvim-tree/nvim-tree.lua)  
    &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;|--- treesitter.lua      语法高亮[官网](https://github.com/nvim-treesitter/nvim-treesitter)  
|--- plugin  packer插件管理自动生成及管理的目录  
#### 安装教程

1.  将此仓库clone到~/.config/nvim/下
```git
git clone git@gitee.com:lvlaotou/nvim-config.git ~/.config/nvim/
```
2.  安装必要的依赖程序

> 因为很多插件需要从Github下载，所以网络问题需要自己解决

Arch Linux 安装

```shell
# 安装依赖
yay -S wl-clipboard xsel git ttf-hack-nerd gcc ripgrep nodejs
# 安装npm
curl -qL https://www.npmjs.com/install.sh | sudo sh
# 配置npm镜像源
npm config set registry https://registry.npmmirror.com
```

Windows 安装

```
下载并安装git（能看到这个文章我相信你已经安装了git）
https://git-scm.com/download/win

下载并安装npm 
https://nodejs.cn/download/current/

配置np镜像源
npm config set registry https://registry.npm.taobao.org

下载并安装ripgrep
https://github.com/BurntSushi/ripgrep/releases

下载并安装Hack字体
https://github.com/source-foundry/Hack-windows-installer

下载并安装gcc
https://github.com/skeeto/w64devkit/
```
    - wl-clipboard wayland协议下使用粘贴版
    - xsel 与系统剪贴板通信程序
    - git 版本控制，因为插件都是从github下载
    - ttf-hack-nerd 依赖字体 [字体官网](https://www.nerdfonts.com/)|[AUR](https://archlinux.org/groups/any/nerd-fonts/) (插件：nvim-tree | nvim-web-devicons)
    - gcc 编译器 （插件：treesitter）
    - ripgrep 递归文件检索  （插件：telescope）
    - nodejs和npm js包管理器    （插件：markdown-preview）
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
    - markdown
        - 预览  MarkdownPreview
        - 停止预览  MarkdownPreviewStop
    - 搜索 参考lua/plugin/telescope.lua
        - 在文件名称中搜索 {主键}+ff
        - 在文件名称和内容中搜索    {主键}+fg
        - 在文件名称和帮助手册中搜索    {主键}+fh
        - 在文件名称和buffer中搜索  {主键}+fb
