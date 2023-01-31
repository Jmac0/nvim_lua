local builtin = require('telescope.builtin')
require('telescope').setup{defaults = {file_ignore_patterns = {"node_modules", ".git" },pickers = {
find_files = {
hidden = true
			}
		}
	},

}


vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>gs', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
