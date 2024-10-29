require("config.lazy")

-- Enable relative line numbers
vim.opt.relativenumber = true

-- Enable syntax highlighting
vim.cmd('syntax on')

-- Set encoding to UTF-8
vim.opt.encoding = 'utf-8'

-- Enable mouse support
vim.opt.mouse = 'a'

-- Highlight the current line
vim.opt.cursorline = true

-- Highlight matching parentheses
vim.opt.showmatch = true

-- Load Python 3 provider
vim.g.loaded_python3_provider = 1
vim.g.python3_host_prog = "C:\\Users\\hinny\\.pyenv\\pyenv-win\\versions\\3.10.0\\python.exe"


-- keybindings
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

