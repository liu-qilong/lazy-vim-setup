return {
  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true, -- suggest as you type, just like VS Code
        hide_during_completion = true,
        debounce = 75,
        keymap = {
          accept = "<Tab>", -- accept full suggestion
          accept_word = "<C-Right>", -- accept one word
          accept_line = "<C-Down>", -- accept one line
          next = "<M-]>", -- cycle to next suggestion
          prev = "<M-[>", -- cycle to previous suggestion
          dismiss = "<C-]>", -- dismiss suggestion
        },
      },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        help = true,
      },
    },
  },
}
