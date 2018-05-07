function Armory:GetIsAdvanced()
    return self:GetTechId() == kTechId.AdvancedArmory
end

if Server then
    function Armory:GetShouldResupplyPlayer(player)

        if not player:GetIsAlive() then
            return false
        end

        local stunned = HasMixin(player, "Stun") and player:GetIsStunned()

        if stunned then
            return false
        end

        local inNeed = false

        -- Don't resupply when already full
        local health = self:GetIsAdvanced() and player:GetHealthScalar() or player:GetHealthFraction()
        if health < 1 then
            inNeed = true
        else

            -- Do any weapons need ammo?
            for i, child in ientitychildren(player, "ClipWeapon") do

                if child:GetNeedsAmmo(false) then
                    inNeed = true
                    break
                end

            end

        end

        if inNeed then

            -- Check player facing so players can't fight while getting benefits of armory
            local viewVec = player:GetViewAngles():GetCoords().zAxis

            local toArmoryVec = self:GetOrigin() - player:GetOrigin()

            if(GetNormalizedVector(viewVec):DotProduct(GetNormalizedVector(toArmoryVec)) > .75) then

                if self:GetTimeToResupplyPlayer(player) then

                    return true

                end

            end

        end

        return false

    end

    function Armory:ResupplyPlayer(player)

        local resuppliedPlayer = false

        -- Heal player first
        if (player:GetHealthScalar() < 1) then

            player:AddHealth(Armory.kHealAmount, false, not self:GetIsAdvanced())

            self:TriggerEffects("armory_health", {effecthostcoords = Coords.GetTranslation(player:GetOrigin())})

            resuppliedPlayer = true

            if self:GetIsAdvanced() and HasMixin(player, "ParasiteAble") and player:GetIsParasited() then

                player:RemoveParasite()

            end

            if player:isa("Marine") and player.poisoned then

                player.poisoned = false

            end

        end

        -- Give ammo to all their weapons, one clip at a time, starting from primary
        local weapons = player:GetHUDOrderedWeaponList()

        for index, weapon in ipairs(weapons) do

            if weapon:isa("ClipWeapon") then

                if weapon:GiveAmmo(1, false) then

                    self:TriggerEffects("armory_ammo", {effecthostcoords = Coords.GetTranslation(player:GetOrigin())})

                    resuppliedPlayer = true

                    break

                end

            end

        end

        if resuppliedPlayer then

            -- Insert/update entry in table
            self.resuppliedPlayers[player:GetId()] = Shared.GetTime()

            -- Play effect
            --self:PlayArmoryScan(player:GetId())

        end

    end

end

if Client then
    local kHealthIndicatorModelName = PrecacheAsset("models/marine/armory/health_indicator.model")
    local kUpVector = Vector(0, 1, 0)

    function Armory:OnUpdateRender()

        PROFILE("Armory:OnUpdateRender")

        local player = Client.GetLocalPlayer()
        local showHealthIndicator = false

        if player then
            local health = self:GetIsAdvanced() and player:GetHealthScalar() or player:GetHealthFraction()
            showHealthIndicator = GetIsUnitActive(self) and GetAreFriends(self, player) and health < 1 and player:GetIsAlive() and not player:isa("Commander")
        end

        if not self.healthIndicator then

            self.healthIndicator = Client.CreateRenderModel(RenderScene.Zone_Default)
            self.healthIndicator:SetModel(kHealthIndicatorModelName)

        end

        self.healthIndicator:SetIsVisible(showHealthIndicator)

        -- rotate model if visible
        if showHealthIndicator then

            local time = Shared.GetTime()
            local zAxis = Vector(math.cos(time), 0, math.sin(time))

            local coords = Coords.GetLookIn(self:GetOrigin() + 2.9 * kUpVector, zAxis)
            self.healthIndicator:SetCoords(coords)

        end

    end

end