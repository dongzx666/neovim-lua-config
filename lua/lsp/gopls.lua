require'lspconfig'.gopls.setup{}
return {
  cmd =  { "gopls" },
  filetypes =  { "go", "gomod", "gotmpl" },
}
