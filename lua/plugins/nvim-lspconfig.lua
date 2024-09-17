return {
  'neovim/nvim-lspconfig',
  config = function()
    require('lspconfig').clangd.setup {
      cmd = {"/usr/bin/clangd", "--compile-commands-dir=/usr/local/google/home/ctshao"}
    }

    vim.api.nvim_set_keymap('n', '<leader>dd', '', {
      noremap = true,
      silent = true,
      callback = function()
        if vim.diagnostic.is_disabled() then
          vim.diagnostic.enable()
        else
          vim.diagnostic.disable()
        end
      end,
      desc = "Toggle diagnostics",
    })

    vim.api.nvim_set_keymap('n', '<leader>dn', '', {
      noremap = true,
      silent = true,
      callback = function()
        vim.diagnostic.goto_next()
      end,
      desc = "Goto next diagnostic",
    })
  end,
}
