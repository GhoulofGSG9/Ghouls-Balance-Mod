-- Marines = 100 + 50 * cc
-- Aliens = 100 * hives

-- Todo: Use team getter methods to fectbh these values
local kAlienBaseSupply = 0
local kMarineBaseSupply = 100
local kAlienSuppyPerTechPoint = 100
local kMarineSuppyPerTechPoint = 50

function GetMaxSupplyForTeam(teamNumber)

    local maxSupply = 0

    local teamInfoEnt = GetTeamInfoEntity(teamNumber)
    if teamInfoEnt and teamInfoEnt.GetNumCapturedTechPoints then
        local isTeam1 = teamNumber == kTeam1Index
        local baseSupply = isTeam1 and kMarineBaseSupply or kAlienBaseSupply
        local supplyPerTechPoint = isTeam1 and kMarineSuppyPerTechPoint or kAlienSuppyPerTechPoint
        maxSupply = baseSupply + teamInfoEnt:GetNumCapturedTechPoints() * supplyPerTechPoint
    end

    return maxSupply


end