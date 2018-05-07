Script.Load("lua/GhoulsBalance/GUIModChangelog.lua")

local function showchangelog()
	MainMenu_Open()
	local mm = GetGUIMainMenu and GetGUIMainMenu()
	if mm then
		local changelog = CreateMenuElement(mm.mainWindow, "GUIModChangelog")
		changelog:SetIsVisible(true)
	end
end

local oldOnInitLocalClient = Player.OnInitLocalClient
function Player:OnInitLocalClient()
	oldOnInitLocalClient(self)

	local oldversion = Client.GetOptionInteger("balancemod_version", 0)
	if GBM_version > oldversion then
		Client.SetOptionInteger("balancemod_version", GBM_version)
		showchangelog()
	end

end

Event.Hook("Console_changelog", showchangelog)