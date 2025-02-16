return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = '[A]dd to Harpoon' })
    -- <A-g> is not a valid keybinding, so we use ¸
    vim.keymap.set('n', '¸', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    -- Clear Harpoon list
    -- <A-x> is not a valid keybinding, so we use ≈
    vim.keymap.set('n', '≈', function()
      harpoon:list():clear()
    end)

    -- <A-n> is not a valid keybinding, so we use ‘
    vim.keymap.set('n', '‘', function()
      harpoon:list():select(1)
    end)
    -- <A-e> is not a valid keybinding, so we use é
    vim.keymap.set('n', 'é', function()
      harpoon:list():select(2)
    end)
    -- <A-i> is not a valid keybinding, so we use ı
    vim.keymap.set('n', 'ı', function()
      harpoon:list():select(3)
    end)
    -- <A-o> is not a valid keybinding, so we use œ
    vim.keymap.set('n', 'œ', function()
      harpoon:list():select(4)
    end)
    --
    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '›', function()
      harpoon:list():prev()
    end)
    vim.keymap.set('n', '√', function()
      harpoon:list():next()
    end)
  end,
}
