-- neovide settings
if vim.g.neovide then
  vim.o.guifont = "FiraCode Nerd Font:h10"
  vim.o.winblend = 30

  -- vim.g.neovide_transparency = 1.0
  -- vim.g.transparency = 0.0
  -- vim.opts.defaults.winblend

  vim.g.neovide_scroll_animation_length = 0.1
  vim.g.neovide_remember_window_size = true

  vim.g.neovide_profiler = false
  vim.g.neovide_cursor_animation_length = 0.03
  vim.g.neovide_cursor_trail_size = 0.03
  vim.g.neovide_cursor_animate_command_line = true

  vim.g.neovide_floating_blur_amount_x = 4.0
  vim.g.neovide_floating_blur_amount_y = 4.0

  vim.api.nvim_set_hl(0, "TelescopeNormal", {
    bg = "none",
  })
  vim.cmd [[
    set winblend=30
    set pumblend=30

    " hi PmenuSel blend=0
    " hi TelescopeNormal blend=0

    " autocmd FileType * setlocal winblend=30
    " augroup floating_windows
    "   autocmd!
    "   autocmd WinEnter,WinNew * if vim.api.nvim_win_get_config(0).relative ~= '' then vim.api.nvim_win_set_option(0, 'winblend', 30) end
    " augroup END
    " au WinEnter,WinNew * if &float | setlocal winblend=30 | endif
  ]]
end

-- if vim.fn.has "win32" == 1 then
--   vim.o.shell = "pwsh.exe"
--   vim.o.shellcmdflag = "-Command"
--   vim.o.shellxquote = ""
--   vim.o.shellquote = ""
--   vim.o.shellpipe = "| Out-File -Encoding UTF8 %s"
--   vim.o.shellredir = "| Out-File -Encoding UTF8 %s"
-- else
--   -- Leave the default shell for non-Windows systems
-- end

-- vim.opt.relativenumber = true
-- FIX: misspelling detection sucks
vim.opt.spelllang = "en_us"
-- Disabling spelling because it is enabled in terminal
vim.opt.spell = false

-- TODO: set up highlight hovering word
-- TODO: Set up show scope like vscode.
-- TODO: Set up snippets from vscode (drv*, struct, ...)

-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "onedark",
  hl_override = {
    Todo = { link = "Comment" },
    Comment = { italic = true },
    Type = { fg = "#73d0ff" },
    Function = { fg = "#ffd173" },
  },
  lsp_semantic_tokens = true,
  telescope = {
    style = "bordered",
  },
  statusline = {
    separator_style = "round",
  },
}

-- Highlight groups for other elements
vim.api.nvim_set_hl(0, "@lsp.type.decorator", { bold = true, fg = "#ff9900" })
vim.api.nvim_set_hl(0, "@lsp.type.derive", { fg = "#ff9900" })

vim.api.nvim_set_hl(0, "@lsp.type.function", { bold = true, fg = "#ffd173" })
vim.api.nvim_set_hl(0, "@lsp.type.method", { bold = true, italic = true, fg = "#ffd173" })
vim.api.nvim_set_hl(0, "@function", { link = "Function" })

vim.api.nvim_set_hl(0, "@lsp.type.enumMember", { bold = true, italic = true, fg = "#ff7391" })
vim.api.nvim_set_hl(0, "@lsp.type.interface", { bold = true, fg = "#73ffde" })
vim.api.nvim_set_hl(0, "@lsp.type.namespace", { bold = true, fg = "#ff73ea" })

vim.api.nvim_set_hl(0, "@lsp.typemod.variable.constant", { bold = true, fg = "#f2ff00" })
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.readonly", { bold = true, fg = "#f2ff00" })
vim.api.nvim_set_hl(0, "@lsp.type.parameter", { fg = "#92de53" })
vim.api.nvim_set_hl(0, "@lsp.type.property", { bold = true, italic = true, fg = "#53de8d" })
vim.api.nvim_set_hl(0, "@lsp.type.variable", { fg = "#53de8d" })

vim.api.nvim_set_hl(0, "@lsp.type.typeParameter", { bold = true, fg = "#ff7373" })

-- Highlight groups for types
vim.api.nvim_set_hl(0, "@lsp.type.class", { bold = true, fg = "#73d0ff" })
vim.api.nvim_set_hl(0, "@lsp.type.primitive", { link = "@lsp.type.class" })
vim.api.nvim_set_hl(0, "@lsp.type.builtinType", { link = "@lsp.type.class" })
vim.api.nvim_set_hl(0, "@lsp.type.struct", { link = "@lsp.type.class" })
vim.api.nvim_set_hl(0, "@lsp.type.type", { link = "@lsp.type.class" })
vim.api.nvim_set_hl(0, "@lsp.type.enum", { bold = true, italic = true, fg = "#73d0ff" })
vim.api.nvim_set_hl(0, "@type.builtin", { link = "Type" })

return M
