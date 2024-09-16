return {
  'neovim/nvim-lspconfig',
  config = function()
    require('lspconfig').clangd.setup {
      cmd = {"/usr/bin/clangd", "--compile-commands-dir=${COMPILE_COMMANDS_DIR}"}
    }
  end
}
