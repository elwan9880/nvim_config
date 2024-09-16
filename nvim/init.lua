-- Filetype, indent, and plugin settings
vim.opt.filetype = 'on'

-- Basic editor settings
vim.opt.autoindent = true
vim.opt.background = 'dark'
vim.opt.backspace = 'indent,eol,start'
vim.opt.expandtab = true
vim.opt.hlsearch = true
vim.opt.list = true
vim.opt.listchars = 'tab:>-,trail:~,extends:>,precedes:<'
vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.tabstop = 2
vim.opt.title = true

-- Syntax highlighting
vim.opt.syntax = 'on'

-- Remove trailing whitespace on save
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*',
  command = '%s/\\s\\+$//e'
})

-- Paste without overwriting buffer
vim.api.nvim_set_keymap('x', 'p', 'pgvy', { noremap = true })

-- Disable autoindent for comments
vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  command = 'set formatoptions-=t formatoptions-=c formatoptions-=r formatoptions-=o'
})

vim.api.nvim_set_option("clipboard","unnamed")

require("config.lazy")
