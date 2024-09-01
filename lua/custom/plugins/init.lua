return {
  {
    'rest-nvim/rest.nvim',
    keys = {
      {
        '<C-r>',
        ':Rest run<CR>',
        desc = 'Test the current file',
      },
    },
    -- {
    --   'smjonas/inc-rename.nvim',
    --   cmd = 'IncRename',
    --   keys = {
    --     {
    --       '<leader>rn',
    --       function()
    --         return ':IncRename ' .. vim.fn.expand '<cword>'
    --       end,
    --       desc = 'Incremental rename',
    --       mode = 'n',
    --       noremap = true,
    --       expr = true,
    --     },
    --   },
    --   config = true,
    -- },
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = { theme = 'codedark' },
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
}
