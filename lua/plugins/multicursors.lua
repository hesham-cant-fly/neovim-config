-- lazy.nvim:
return {
  "smoka7/multicursors.nvim",
  event = "VeryLazy",
  dependencies = { 'nvimtools/hydra.nvim' },
  -- opts = {},
  cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
  keys = {
    {
      mode = { 'v', 'n' },
      '<C-M>',
      '<cmd>MCstart<cr>',
      desc = 'Create a selection for selected text or word under the cursor',
    },
  },
}
