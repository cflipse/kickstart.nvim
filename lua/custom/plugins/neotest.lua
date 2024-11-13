return {
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',
      'olimorris/neotest-rspec',
    },
    config = function()
      require('neotest').setup {
        adapters = {
          require 'neotest-rspec',
        },
      }
    end,
    rspec_cmd = function(position_type)
      if position_type == 'test' then
        return {
          'bundle',
          'exec',
          'rspec',
          '--fail-fast',
        }
      else
        return {
          'bundle',
          'exec',
          'rspec',
        }
      end
    end,
  },
}
