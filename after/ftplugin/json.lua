vim.api.nvim_buf_set_keymap(0, 'n', '<leader>f', [[<Cmd>%! jq .<CR>]], { noremap = true, silent = true, desc = '[F]ormat buffer' })
vim.api.nvim_buf_set_keymap(0, 'n', '<leader>m', [[<Cmd>%! jq -c .<CR>]], { noremap = true, silent = true, desc = '[M]inify buffer' })
