require'lspconfig'.clangd.setup{}
return {
  cmd = {"clangd"},
  filetypes = {"c", "cpp", "h", "hpp"},
}
