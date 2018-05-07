-- Todo: Find a better solution to implement this
local oldOnResearchComplete = Armory.OnResearchComplete
function Armory:OnResearchComplete(researchId)
    oldOnResearchComplete(self, researchId)

    if researchId == kTechId.AdvancedArmoryUpgrade then

        local supplyDiff = LookupTechData(kTechId.AdvancedArmory, kTechDataSupply, 0)
                -  LookupTechData(kTechId.Armory, kTechDataSupply, 0)

        local team = self:GetTeam()
        if supplyDiff > 0 and team and team.AddSupplyUsed then

            team:AddSupplyUsed(supplyDiff)
            self.supplyAdded = true

        end
    end

end