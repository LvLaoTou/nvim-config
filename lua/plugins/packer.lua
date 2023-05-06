local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- 保存此文件自动更新安装软件
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  
  -- 插件管理工具
  use 'wbthomason/packer.nvim'
  
  -- 主题
  use 'hardhackerlabs/theme-vim'
  
  -- 状态栏
  use { 
    'nvim-lualine/lualine.nvim',
    -- 状态栏图标
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  
  -- 文件目录
  use {
    'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons'}
  }
  
  -- 窗口切换
  use 'christoomey/vim-tmux-navigator'

  -- 彩虹括号
  use {
      'HiPhish/nvim-ts-rainbow2',
      -- 语法高亮,
      requires = {'nvim-treesitter/nvim-treesitter'}

  }

  -- LSP 语法提示
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim", 
    "neovim/nvim-lspconfig"
  }

    -- 自动补全
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  -- snippets引擎，不装这个自动补全会出问题
  use "L3MON4D3/LuaSnip" 
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"
  -- 文件路径
  use "hrsh7th/cmp-path"

  -- 注释
  use "numToStr/Comment.nvim" 

  -- 自动补全括号
  use "windwp/nvim-autopairs" 

  if packer_bootstrap then
    require('packer').sync()
  end
end)
