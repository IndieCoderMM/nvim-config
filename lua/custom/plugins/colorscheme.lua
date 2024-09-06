return {
  {
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    -- 'folke/tokyonight.nvim',
    'rebelot/kanagawa.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'kanagawa-dragon'

      -- Change the hightlighting of the cursor line
      -- vim.cmd.hi 'CursorLine guibg=#1F1F1F'
      -- vim.cmd.hi 'CursorLineNr guifg=#98BB6C'
      -- vim.cmd.hi 'Pmenu guibg=#2a2a2a'
    end,
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
        -- colors = {
        --   theme = {
        --     all = {
        --       ui = {
        --         bg_gutter = 'none',
        --       },
        --     },
        --   },
        -- },
      }
    end,
  },
}
