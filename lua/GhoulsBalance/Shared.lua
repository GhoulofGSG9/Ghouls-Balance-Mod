--Check for diabling global
if gDisableUWEBalance then return end

GBM_version = 201805071 --year month date versionofdate

if AddModPanel then
	local panel = PrecacheAsset("materials/ghoulsbalancemod/panel.material")
	AddModPanel(panel, "https://ghoulofgsg9.github.io/Ghouls-Balance-Mod/")
end