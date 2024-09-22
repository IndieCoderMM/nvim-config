return {
  {
    'epwalsh/pomo.nvim',
    version = '*', -- Recommended, use latest release instead of latest commit
    lazy = true,
    cmd = { 'TimerStart', 'TimerRepeat', 'TimerSession' },
    dependencies = {
      'rcarriga/nvim-notify',
    },
    config = function()
      require('pomo').setup {
        -- How often the notifiers are updated.
        update_interval = 1000,

        -- Configure the default notifiers to use for each timer.
        -- You can also configure different notifiers for timers given specific names, see
        -- the 'timers' field below.
        notifiers = {
          -- The "Default" notifier uses 'vim.notify' and works best when you have 'nvim-notify' installed.
          {
            name = 'Default',
            opts = {
              -- With 'nvim-notify', when 'sticky = true' you'll have a live timer pop-up
              -- continuously displayed. If you only want a pop-up notification when the timer starts
              -- and finishes, set this to false.
              sticky = false,

              -- Configure the display icons:
              title_icon = '󱎫',
              text_icon = '󰄉',
            },
          },
        },
        timers = {},
        sessions = {
          flow = {
            { name = 'Focus', duration = '25m' },
            { name = 'Break', duration = '5m' },
            { name = 'Focus', duration = '45m' },
            { name = 'Break', duration = '5m' },
            { name = 'Focus', duration = '1h30m' },
            { name = 'Long Break', duration = '15m' },
          },
        },
      }
    end,
  },
}
