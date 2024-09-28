return {
  -- lazy
  {
    'ray-x/aurora',
    init = function()
      vim.g.aurora_italic = 1
      vim.g.aurora_transparent = 1
      vim.g.aurora_bold = 1
    end,
    config = function()
      vim.cmd.colorscheme 'aurora'
      -- override defaults

      vim.api.nvim_set_hl(0, 'CursorLineNr', { underline = false, fg = 'orange1' })
      vim.api.nvim_set_hl(0, 'NeoTreeTitleBar', { fg = 'black', bg = 'tomato' })
    end,
  },
  {
    'rebelot/kanagawa.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      require('kanagawa').setup {
        overrides = function(colors)
          local theme = colors.theme
          return {
            Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
            PmenuSel = { fg = 'NONE', bg = theme.ui.bg_p2 },
            PmenuSbar = { bg = theme.ui.bg_m1 },
            PmenuThumb = { bg = theme.ui.bg_p2 },
            CursorLine = { bg = '#1F1F1F' },
          }
        end,
        -- Remove background of LineNr
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = 'none',
              },
            },
          },
        },
      }
      -- vim.cmd.colorscheme 'kanagawa-dragon'
    end,
  },
}
