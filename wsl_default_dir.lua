--This doesnt work best way to do it is by changing bashrc
local wez = require("wezterm")

local wsl_dom = wez.default_wsl_domains()
for idx, dom in ipairs(wsl_dom) do
	if dom.name ~= "WSL:docker-desktop" then
		wez.log_info(dom.name)
		wez.log_info(dom.default_cwd)
		dom.default_cwd = "/home/pierr"
		wez.log_info(dom.default_cwd)
	end
end

return wsl_dom
