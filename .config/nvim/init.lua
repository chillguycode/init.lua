-- Calling the Neovim Config Folder require("neovim-config")
require("neovim-config")

-- Enable line numbering
vim.opt.nu = true

-- Relative Line number
vim.opt.relativenumber = true


-- Enable cursorline to make it easier to see current line
--vim.opt.cursorline = true

--Turning it default cursor after exit (vertical bar with blinking)
vim.api.nvim_create_autocmd("VimLeave", {
  callback = function()
    vim.cmd [[set guicursor=a:ver90-blinkon500]]  -- Vertical bar with blinking
  end,
})



