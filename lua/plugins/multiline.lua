return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    init = function()
      vim.g.VN_maps = {
        ["Find Under"] = "<C-n>",
      }
    end,
  },
}
