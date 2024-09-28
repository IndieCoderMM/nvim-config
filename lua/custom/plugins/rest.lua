return {
  {
    'rest-nvim/rest.nvim',
    config = function()
      vim.g.rest_nvim = {
        result = {
          formatters = {
            json = 'jq',
            html = function(body)
              return vim.fn.system({ 'tidy', '-i', '-q', '-' }, body)
            end,
          },
        },
      }
    end,
    keys = {
      {
        '<C-r>',
        ':Rest run<CR>',
        desc = 'Test the current file',
      },
    },
  },
}
