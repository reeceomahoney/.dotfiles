-- Loads the active Omarchy theme spec; on machines without Omarchy this adds
-- nothing and LazyVim's default colorscheme applies.
local omarchy_theme = vim.fn.expand("~/.local/state/omarchy/current/theme/neovim.lua")

if vim.fn.filereadable(omarchy_theme) == 1 then
	return dofile(omarchy_theme)
end

return {}
