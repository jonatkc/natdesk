--Lua:
function ColorMyTerminal(color)
  color = color or "catppuccin"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(1,"Normal", {bg = "none"})
  vim.api.nvim_set_hl(1,"NormalFloat", {bg = "none"})
end

ColorMyTerminal()
-- vim.cmd[[colorscheme nord]]
