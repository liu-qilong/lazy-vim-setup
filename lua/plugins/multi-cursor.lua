return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    lazy = false, -- must NOT be lazy-loaded or keymaps won't work
    init = function()
      -- vim.g.* settings must go in `init`, not `config`
      vim.g.VM_maps = {
        ["Find Under"] = "<C-n>", -- default: start multicursor on word
        ["Find Subword Under"] = "<C-n>",
      }
    end,
  },
}
