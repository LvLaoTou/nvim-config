require'nvim-treesitter.configs'.setup {
  -- 解析器名称列表
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "java", "rust", "json", "json5", "sql", "yaml"},

  -- 同步安装解析器（仅适用于“ensure_installed”）
  sync_install = false,

  --进入缓冲区时自动安装缺少的解析器
  --建议：如果本地未安装“tree-sitter”CLI，则设置为false
  auto_install = true,

  -- 要忽略安装的解析器列表
  ignore_install = {},


  highlight = {
    enable = true,

    --注意：这些是解析器的名称，而不是文件类型。（例如，如果你想禁用“tex”文件类型的高亮显示，您需要在此列表中包括“latex”解析器的名称）
    --将被禁用的语言列表
    disable = {},
  }
}
