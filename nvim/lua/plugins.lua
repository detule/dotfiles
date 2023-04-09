vim.cmd('let g:airline#extensions#tabline#enabled = 1')

local iron = require("iron.core")
local view = require("iron.view")
local repl_open_cmd = view.split.vertical.botright("50%")

iron.setup {
  config = {
    scratch_repl = true,
    repl_open_cmd = repl_open_cmd
  },
  keymaps = {
    visual_send = "<space>",
    send_line = "<space>",
  },
  highlight = {
    italic = true
  }
}
