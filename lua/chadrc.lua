local M = {}

M.base46 = {
  theme = 'kanagawa',
}

M.ui = {
  tabufline = {
    enabled = false,
  },
}

M.term = {
  winopts = { number = false, relativenumber = false },
  sizes = { sp = 0.3, vsp = 0.2, ['bo sp'] = 0.3, ['bo vsp'] = 0.2 },
  float = {
    relative = 'editor',
    row = 0.3,
    col = 0.25,
    width = 0.5,
    height = 0.4,
    border = 'single',
  },
}

return M
