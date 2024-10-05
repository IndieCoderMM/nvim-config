local M = {}

M.base46 = {
  theme = 'gruvchad',
  transparency = false,
}

M.ui = {
  tabufline = {
    enabled = false,
  },
  telescope = {
    style = 'bordered',
  },
  statusline = {
    theme = 'default',
    separator_style = 'default',
  },
}

M.term = {
  winopts = { number = false, relativenumber = false },
  sizes = { sp = 0.3, vsp = 0.2, ['bo sp'] = 0.3, ['bo vsp'] = 0.2 },
  float = {
    relative = 'editor',
    row = 0.1,
    col = 0.1,
    width = 0.8,
    height = 0.4,
    border = 'single',
  },
}

return M
