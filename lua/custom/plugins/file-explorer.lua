return {
  -- 'nvim-neo-tree/neo-tree.nvim',
  -- branch = 'v3.x',
  -- dependencies = {
  --   'nvim-lua/plenary.nvim',
  --   'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
  --   'MunifTanjim/nui.nvim',
  --   -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  -- },
  -- opts = {
  --   close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
  -- },
  -- keys = {
  --   { '<leader>nt', '<cmd>Neotree toggle<cr>', desc = 'NeoTree toggle' },
  -- },
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    init = function()
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
    end,
    -- keys = {
    --   {
    --     'n',
    --     '-',
    --     '<CMD>Oil<CR>',
    --     desc = 'Open parent directory',
    --   },
    -- },
  },
}
