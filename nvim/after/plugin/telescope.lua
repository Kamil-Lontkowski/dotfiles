local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
local telescope = require('telescope')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) -- pf like project files
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function() 
    builtin.grep_string({ search = vim.fn.input('Grep > ') });
end)
vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) -- find files
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}) -- live grep
vim.keymap.set('n', '<leader>fb', builtin.buffers, {}) -- find buffers
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {}) -- find help
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {}) -- look for references
vim.keymap.set('n', '<leader>fi', builtin.lsp_implementations, {}) -- look for implementations
vim.keymap.set('n', '<leader>fgc', builtin.git_commits, {}) -- search git commits 
vim.keymap.set('n', '<leader>fgf', builtin.git_bcommits, {}) -- search git commits in current buffer
vim.keymap.set('n', '<leader>fgb', builtin.git_branches, {}) -- search branches
vim.keymap.set('n', '<leader>freg', builtin.registers, {}) -- search register, paster on selection 
vim.keymap.set('n', '<leader>fds', builtin.lsp_document_symbols, {}) -- show symbols in current buffer, like intelliJ structure

telescope.setup {
    pickers = {
      buffers = {
        mappings = {
          i = {
            ["<C-d>"] = actions.delete_buffer         
          },
          n = {
            ["<C-d>"] = actions.delete_buffer
          }
        }
      }
    },
    defaults = {
      path_display = { "smart" },
  
      mappings = {
        i = {
            ["<C-n>"] = telescope.cycle_history_next,
            ["<C-p>"] = telescope.cycle_history_prev
        },
        
        n = {
            ["<C-j>"] = telescope.move_selection_next,
            ["<C-k>"] = telescope.move_selection_previous
        }
      }
    }
}