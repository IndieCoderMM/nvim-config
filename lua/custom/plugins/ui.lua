return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = { theme = 'seoul256' },
      }
    end,
  },
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        config = {
          week_header = {
            enable = true,
          },
          shortcut = {
            { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
            {
              desc = '󰪺 Recents',
              group = 'DiagnosticHint',
              action = 'Telescope oldfiles',
              key = 'r',
            },
            {
              desc = '󰚝 Projects',
              group = 'DiagnosticHint',
              action = 'Telescope find_files cwd=~/Projects',
              key = 'p',
            },
            {
              desc = '󰴉 Workspaces',
              group = 'DiagnosticHint',
              action = 'Telescope find_files cwd=~/Pandora',
              key = 'w',
            },
          },
        },
      }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  },
  {
    'akinsho/bufferline.nvim',
    event = 'VeryLazy',
    keys = {
      { '<Tab>', '<Cmd>BufferLineCycleNext<CR>', mode = 'n', desc = 'Next tab' },
      { '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', mode = 'n', desc = 'Prev tab' },
    },
    opts = {
      options = {
        mode = 'tabs',
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },
}
