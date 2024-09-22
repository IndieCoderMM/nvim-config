return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'
      harpoon:setup {}

      -- basic telescope configuration
      local conf = require('telescope.config').values
      local function toggle_telescope(harpoon_files)
        local file_paths = {}
        for _, item in ipairs(harpoon_files.items) do
          table.insert(file_paths, item.value)
        end

        require('telescope.pickers')
          .new({}, {
            prompt_title = 'Harpoon',
            finder = require('telescope.finders').new_table {
              results = file_paths,
            },
            previewer = conf.file_previewer {},
            sorter = conf.generic_sorter {},
          })
          :find()
      end

      vim.keymap.set('n', ';e', function()
        toggle_telescope(harpoon:list())
      end, { desc = 'Harpoon: [E]xplore window' })

      vim.keymap.set('n', ';a', function()
        harpoon:list():add()
      end, { desc = 'Harpoon: [A]dd current buffer' })

      vim.keymap.set('n', ';r', function()
        harpoon:list():remove()
      end, { desc = 'Harpoon: [R]emove current buffer' })

      vim.keymap.set('n', ';p', function()
        harpoon:list():prev()
      end, { desc = 'Harpoon: Toggle [P]revious buffer' })

      vim.keymap.set('n', ';n', function()
        harpoon:list():next()
      end, { desc = 'Harpoon: Toggle [N]ext buffer' })

      vim.keymap.set('n', ';c', function()
        harpoon:list():clear()
      end, { desc = 'Harpoon: [C]lear buffers list' })

      -- vim.keymap.set('n', ';1', function()
      --   harpoon:list():select(1)
      -- end)
      -- vim.keymap.set('n', ';2', function()
      --   harpoon:list():select(2)
      -- end)
      -- vim.keymap.set('n', ';3', function()
      --   harpoon:list():select(3)
      -- end)
      -- vim.keymap.set('n', ';4', function()
      --   harpoon:list():select(4)
      -- end)
    end,
  },
}
