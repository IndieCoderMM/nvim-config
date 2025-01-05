local M = {}

M.base46 = {
  theme = 'bearded-arc',
  transparency = true,
}

M.ui = {
  statusline = {
    theme = 'minimal',
    separator_style = 'round',
  },
  tabufline = {
    order = { 'treeOffset', 'buffers', 'tabs' },
  },
  telescope = {
    style = 'bordered',
  },
}

M.nvdash = {
  load_on_startup = true,

  header = {
    '██╗███╗   ██╗██████╗ ██╗███████╗ ██████╗ ██████╗ ██████╗ ███████╗██████╗',
    '██║████╗  ██║██╔══██╗██║██╔════╝██╔════╝██╔═══██╗██╔══██╗██╔════╝██╔══██╗',
    '██║██╔██╗ ██║██║  ██║██║█████╗  ██║     ██║   ██║██║  ██║█████╗  ██████╔╝',
    '██║██║╚██╗██║██║  ██║██║██╔══╝  ██║     ██║   ██║██║  ██║██╔══╝  ██╔══██╗',
    '██║██║ ╚████║██████╔╝██║███████╗╚██████╗╚██████╔╝██████╔╝███████╗██║  ██║',
    '╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝╚══════╝ ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝',
    '                                                                         ',
  },
}

M.term = {
  winopts = {
    number = true,
    relativenumber = false,
  },
}

M.lsp = {
  signature = true,
}

return M
