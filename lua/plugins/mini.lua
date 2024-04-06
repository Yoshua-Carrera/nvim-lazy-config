return {
  {
    "echasnovski/mini.nvim",
    config = function()
      local miniMap = require("mini.map")
      require("mini.map").setup({
        integrations = {
          miniMap.gen_integration.builtin_search(),
          miniMap.gen_integration.gitsigns(),
          miniMap.gen_integration.diagnostic(),
        },
        symbols = {
          encode = miniMap.gen_encode_symbols.shade("2x1"),
        },
      })
      vim.keymap.set("n", "<leader>mm", function()
        miniMap.refresh()
        miniMap.toggle()
      end, {
        desc = "Toggle Mini Map",
      })
    end,
    opts = {},
  },
}
