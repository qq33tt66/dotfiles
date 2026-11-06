return {
  "nvim-mini/mini.files",
  version = false,
  opts = {
    mappings = {
      go_in = "l",
      go_out = "H",
      go_out_plus = "h",
      mark_goto = "'",
      mark_set = "m",
      synchronize = ".",
    },

    options = {
      permanent_delete = false,
    },

    windows = {
      preview = true,
    },
  },
}
