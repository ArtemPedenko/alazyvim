return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      opts.picker = opts.picker or {}

      opts.picker.sources = opts.picker.sources or {}

      opts.picker.sources.files = vim.tbl_deep_extend("force", opts.picker.sources.files or {}, {
        hidden = true,
        ignored = false,
      })

      opts.picker.sources.grep = vim.tbl_deep_extend("force", opts.picker.sources.grep or {}, {
        hidden = true,
        ignored = false,
      })

      opts.picker.sources.explorer = vim.tbl_deep_extend("force", opts.picker.sources.explorer or {}, {
        hidden = true,
        ignored = false,
        include = { ".env", ".env.*" },
      })

      opts.picker.sources.projects = vim.tbl_deep_extend("force", opts.picker.sources.projects or {}, {
        confirm = { "tcd", "picker_files" },
      })

      return opts
    end,
  },
}
