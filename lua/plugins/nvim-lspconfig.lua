return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.config("clangd", {
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
      on_attach = function(client, bufnr)
        vim.diagnostic.enable(false)
      end,
    })

    vim.lsp.enable({"clangd"})

    vim.api.nvim_set_keymap("n", "<leader>dd", "", {
      noremap = true,
      silent = true,
      callback = function()
        if vim.diagnostic.is_enabled() then
          vim.diagnostic.enable(false)
        else
          vim.diagnostic.enable()
        end
      end,
      desc = "Toggle diagnostics",
    })

    vim.api.nvim_set_keymap("n", "<leader>dn", "", {
      noremap = true,
      silent = true,
      callback = function()
        vim.diagnostic.jump({count=1})
      end,
      desc = "Goto next diagnostic",
    })

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Goto Definition' })
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = 'Goto Declaration' })
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'Goto References' })
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Hover Docs' })

  end,
}
