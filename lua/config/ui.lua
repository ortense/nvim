local UI = {}

-- 🌈 active theme
UI.colorscheme = "rose-pine-moon" -- use <leader>t to check options

-- ⛶ border styles
-- TODO: match with snacks
UI.border = "single" -- "single", "rounded", "double" or "none".

-- 🏳️ UI flags
UI.current_line_blame = true    -- active blame inline (gitsigns)
UI.show_bufferline = false      -- active tabline
UI.animate_scroll = true        -- active scroll animation
UI.relative_line_number = false -- use relative line numbers
UI.noice_ui = true              -- use experimental noice ui

-- 🔤 symbols
UI.symbols = {
  diagnostics = {
    error = " ",
    hint = " ",
    info = " ",
    warn = " ",
  },
  files = {
    modified = " ",
    readonly = " ",
    newfile = " ",
    unnamed = "[No Name]",
  },
  git = {
    logo = "",
    branch = "󰘬",
    added = "",
    modified = "",
    removed = "",
    diff_close = "",
    prev_hunk = "",
    branches = "",
    diff_open = "",
    preview_hunk = "󰡫",
    log = "",
    next_hunk = "",
    preview_hunk_inline = "󰆿",
    reset_hunk = "",
    status = "󱖫",
    copy_url = "",
  },
  modes = {
    ["NORMAL"] = "",
    ["INSERT"] = "󱇨",
    ["VISUAL"] = "󰫙",
    ["V-LINE"] = "󰒅",
    ["V-BLOCK"] = "󰩭",
    ["COMMAND"] = "",
    ["TERMINAL"] = "",
    ["REPLACE"] = "",
  },
  commands = {
    which_key = "󰓎",
    dashboard = "󰡃",
    clear_search = "󰃢",
    code_actions = "",
    toggle_comment = "",
    file_tree = "󱏒",
    hover = "󰼢",
    yank = "",
    paste = "",
    rename = "󰤀",
    save = "",
    themes = "",
    zenmode = "",
    git = {
      added = "",
      modified = "",
      removed = "",
      diff_close = "",
      prev_hunk = "",
      branches = "",
      diff_open = "",
      preview_hunk = "󰡫",
      log = "",
      next_hunk = "",
      preview_hunk_inline = "󰆿",
      reset_hunk = "",
      status = "󱖫",
    },

    buffers = {
      list = "",
      close = "",
      kill = "󰅙",
      next = "",
      close_others = "",
    },

    debug = {
      breakpoint = "",
      run = "",
      test = "",
      stop = "",
    },

    diagnostic = {
      all = "",
      buffer = "󱪘",
      open = "",
      location_list = "",
      next = "",
      prev = "",
      quickfix = "󰁨",
    },
    find = {
      buffer = "󰩊",
      command_history = "",
      files = "󰱽",
      global = "",
      hidden = "󰘓",
      marks = "󰟙",
      recent = "",
      tags = "",
      workspace_symbol = "",
      document_symbol = "",
    },
    go_to = {
      group = "󰦻",
      first_non_blank = "",
      definition = "",
      char = "󰾹",
      end_of_file = "",
      implementation = "󰠲",
      line = "",
      node = "󰉶",
      references = "",
      top_of_file = "",
      word = "",
    },
    match = {
      group = "󱈅",
      whole_word = "",
      paragraph = "",
      sentence = "",
      tag = "󰅴",
      word = "󰾹",
    },
    window = {
      close = "󰅚",
      equalize = "󰝘",
      move_left = "",
      move_down = "",
      move_up = "",
      move_right = "",
      maximize = "󰆾",
      horizontal_split = "",
      vertical_split = "",
      switch = "",
    },
    quit = {
      quit_all_force = "",
      quit = "󰩈",
      save_all_quit = "",
      quit_all = "󱂬",
      quit_force = "",
      save_quit = "",
    },
  },
}

return UI
