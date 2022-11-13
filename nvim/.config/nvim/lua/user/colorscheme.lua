local colorscheme = "gruvbox"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
vim.cmd "highlight Normal ctermbg=none"
vim.cmd "highlight NonText ctermbg=none"
if not status_ok then
  return
end
