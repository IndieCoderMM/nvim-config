return {
  {
    'nvchad/ui',
    config = function()
      require 'nvchad'

      -- Toggle buffers
      vim.keymap.set('n', '<Tab>', function()
        require('nvchad.tabufline').next()
      end, { desc = 'Next tab' })
      vim.keymap.set('n', '<S-Tab>', function()
        require('nvchad.tabufline').prev()
      end, { desc = 'Prev tab' })
      vim.keymap.set('n', '<C-x>', function()
        require('nvchad.tabufline').close_buffer()
      end, { desc = 'Close buffer' })
      -- Theme picker
      vim.keymap.set('n', '<C-t>', function()
        require('nvchad.themes').open()
      end, { desc = 'Theme picker' })

      -- Terminal
      vim.keymap.set({ 'n', 't' }, '<leader>`', function()
        require('nvchad.term').toggle {
          pos = 'sp',
          id = 'hterm',
        }
      end, { desc = 'Theme picker' })
    end,
  },
  'nvchad/volt',
  {
    'nvchad/base46',
    lazy = true,
    build = function()
      require('base46').load_all_highlights()
    end,
  },
}
