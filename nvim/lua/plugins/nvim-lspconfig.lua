return {
  'neovim/nvim-lspconfig',
  config = function()
    require('lspconfig').clangd.setup {
      cmd = {"/usr/bin/clangd", "--compile-commands-dir=/usr/local/google/home/ctshao"}
    }
  end
}
