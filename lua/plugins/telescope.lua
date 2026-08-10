return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      local telescope = require("telescope")

      opts.defaults = opts.defaults or {}
      opts.pickers = opts.pickers or {}

      opts.pickers.find_files = vim.tbl_deep_extend("force", opts.pickers.find_files or {}, {
        hidden = true,
        no_ignore = true,
        follow = true,
      })

      opts.pickers.live_grep = vim.tbl_deep_extend("force", opts.pickers.live_grep or {}, {
        additional_args = function()
          return { "--hidden", "--no-ignore", "--follow" }
        end,
      })

      return opts
    end,
  },
}
