--Check for diabling global
if gDisableUWEBalance then return end

GBM_version = 201806061 --year month day versionofday

if AddModPanel then
	local panel = PrecacheAsset("materials/ghoulsbalancemod/panel.material")
	AddModPanel(panel, "https://ghoulofgsg9.github.io/Ghouls-Balance-Mod/")
end