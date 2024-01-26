vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.mouse = "a"
vim.opt.scrolloff = 5

vim.opt.autoindent = true
vim.opt.termguicolors = true

vim.opt.shell = 'pwsh.exe'
vim.opt.shellcmdflag = '-NoLogo -NoProfile -NonInteractive -ExecutionPolicy RemoteSigned -Command '
vim.opt.shellxquote = ''
vim.opt.shellquote = ''
vim.opt.shellredir = '2>&1 | Out-File -Encoding UTF8 %s'
vim.opt.shellpipe = '2>&1 | Out-File -Encoding UTF8 %s'

function Scala_settings()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
end


local filetype_group = vim.api.nvim_create_augroup('indents', { clear = true })
vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'scala', 'sbt', 'sc' },
    callback = function()
      Scala_settings()
    end,
    group = filetype_group,
  })