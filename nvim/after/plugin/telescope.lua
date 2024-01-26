local builtin = require('telescope.builtin')
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

telescope.setup {
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