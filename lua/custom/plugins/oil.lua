return {
  {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('oil').setup {
        columns = { 'icon' },
        view_options = {
          show_hidden = true,
        },
        keymaps = {
          ['<C-l>'] = false,
          ['<C-h>'] = false,
        },
      }

      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
      -- muscle memory is sf from telescope file browser
      vim.keymap.set('n', 'sf', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
    end,
  },
}
