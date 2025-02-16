vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
-- These are enabled by default in 0.10.0
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>de', vim.diagnostic.open_float, { desc = 'Show [D]iagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-left>', '<C-w>h', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-right>', '<C-w>l', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-down>', '<C-w>j', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-up>', '<C-w>k', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'G', 'Gzz')
vim.keymap.set('n', 'n', 'nzz')
-- did not work
vim.keymap.set('v', '%', '%zz')

vim.keymap.set('n', '<leader>e', vim.cmd.Ex, { desc = 'File [E]xplorer' })
vim.keymap.set('n', '<leader>rt', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = '[R]ename [T]ext' })
vim.keymap.set('n', '<leader>rw', [[:%s/\<<C-r><C-a>\>/<C-r><C-a>/gI<Left><Left><Left>]], { desc = '[R]ename [W]ord' })

vim.keymap.set('v', '<S-down>', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', '<S-up>', ":m '<-2<CR>gv=gv")

-- System clipboard shortcut
vim.keymap.set('n', '<leader>y', [["+y]], { desc = '[Y]ank to system clipboard' })
vim.keymap.set('n', '<leader>p', [["+p]], { desc = '[P]aste from system clipboard' })
vim.keymap.set('v', '<leader>y', [["+y]], { desc = '[Y]ank to system clipboard' })
vim.keymap.set('v', '<leader>p', [["+p]], { desc = '[P]aste from system clipboard' })

vim.keymap.set('n', '<leader>d', [["_d]], { desc = '[D]elete without saving in buffer' })
