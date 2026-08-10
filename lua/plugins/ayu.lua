return {
  {
    "Shatur/neovim-ayu",
    priority = 1000,
    config = function()
      require("ayu").setup({
        mirage = false,
      })
    end,
  },
}
