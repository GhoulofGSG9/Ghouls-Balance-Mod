-- Todo: Find a better solution to implement this
local oldOnResearchComplete = RoboticsFactory.OnResearchComplete
function RoboticsFactory:OnResearchComplete(researchId)
    oldOnResearchComplete(self, researchId)

    if researchId == kTechId.UpgradeRoboticsFactory then

        local supplyDiff = LookupTechData(kTechId.ARCRoboticsFactory, kTechDataSupply, 0)
                -  LookupTechData(kTechId.RoboticsFactory, kTechDataSupply, 0)

        local team = self:GetTeam()
        if supplyDiff > 0 and team and team.AddSupplyUsed then

            team:AddSupplyUsed(supplyDiff)
            self.supplyAdded = true

        end
    end

end
