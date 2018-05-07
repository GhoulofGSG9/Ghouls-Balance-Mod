local oldLookupTechData = LookupTechData
function LookupTechData(techId, fieldName, default)

    if fieldName == kTechDataSupply then
        if techId == kTechId.AdvancedArmoryUpgrade then return kAdvArmorySupply - kArmorySupply
        elseif techId == kTechId.UpgradeRoboticsFactory then return kARCFactorySupply - kRoboticsFactorySupply
        elseif techId == kTechId.AdvancedArmory then return kAdvArmorySupply
        elseif techId == kTechId.Observatory then return kObservatorySupply
        elseif techId == kTechId.ARCRoboticsFactory then return kARCFactorySupply
        elseif techId == kTechId.PrototypeLab then return kPrototypeLabSupply
        elseif techId == kTechId.ArmsLab then return kArmsLabSupply
        end
    end

    return oldLookupTechData(techId, fieldName, default)
end