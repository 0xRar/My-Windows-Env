-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- config.color_scheme = "Batman"
-- config.color_scheme = "AlienBlood"
config.color_scheme = "Abernathy"
-- for more https://wezterm.org/colorschemes/a/index.html

-- Changing the default shell to pwsh instead of cmd
config.default_prog = { "C:\\Program Files\\WindowsApps\\Microsoft.PowerShell_7.5.0.0_x64__8wekyb3d8bbwe\\pwsh.exe" }

-- Rar KeyBinds
config.keys = {
	-- Use CTRL + SHIFT + E for horizontal split (Sorry im used to terminator)
	{
		key = "E",
		mods = "CTRL|SHIFT", -- This uses Control as the leader key
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},

	-- Use CTRL + SHIFT + O for vertical split (Sorry im used to terminator)
	{
		key = "O",
		mods = "CTRL|SHIFT", -- This uses Control as the leader key
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
}

return config
