function Flamethrower:ApplyConeDamage(player)

    local eyePos = player:GetEyePos()
    local ents = {}

    local fireDirection = player:GetViewCoords().zAxis
    local extents = Vector(self.kConeWidth, self.kConeWidth, self.kConeWidth)
    local range = self:GetRange()

    local startPoint = Vector(eyePos)
    local filterEnts = {self, player}
    local trace = TraceMeleeBox(self, startPoint, fireDirection, extents, range, PhysicsMask.Flame, EntityFilterList(filterEnts))

    local endPoint = trace.endPoint
    local normal = trace.normal

    -- Check for spores in the way.
    if Server then
        self:BurnSporesAndUmbra(startPoint, endPoint)
    end

    if trace.fraction ~= 1 then

        local traceEnt = trace.entity
        if traceEnt and HasMixin(traceEnt, "Live") and traceEnt:GetCanTakeDamage() then
            table.insert(ents, traceEnt)
        end

        local hitEntities = GetEntitiesWithMixinWithinRange("Live", endPoint, self.kDamageRadius)
        local damageHeight =  self.kDamageRadius / 2
        for i = 1, #hitEntities do
            local ent = hitEntities[i]
            if ent ~= traceEnt and ent:GetCanTakeDamage() and math.abs(endPoint.y - ent:GetOrigin().y) <= damageHeight then
                table.insert(ents, ent)
            end
        end

        --Create Flame
        if Server then
            --Create flame below target
            if trace.entity then
                local groundTrace = Shared.TraceRay(endPoint, endPoint + Vector(0, -2.6, 0), CollisionRep.Default, PhysicsMask.CystBuild, EntityFilterAllButIsa("TechPoint"))
                if groundTrace.fraction ~= 1 then
                    fireDirection = fireDirection * 0.55 + normal
                    fireDirection:Normalize()

                    self:CreateFlame(player, groundTrace.endPoint, groundTrace.normal, fireDirection)
                end
            else
                fireDirection = fireDirection * 0.55 + normal
                fireDirection:Normalize()

                self:CreateFlame(player, endPoint, normal, fireDirection)
            end

        end

    end

    local attackDamage = kFlamethrowerDamage
    for i = 1, #ents do

        local ent = ents[i]
        local enemyOrigin = ent:GetModelOrigin()

        if ent ~= player and enemyOrigin then

            local toEnemy = GetNormalizedVector(enemyOrigin - eyePos)

            local health = ent:GetHealth()
            self:DoDamage( attackDamage, ent, enemyOrigin, toEnemy )

            -- Only light on fire if we successfully damaged them
            if ent:GetHealth() ~= health and HasMixin(ent, "Fire") then
                ent:SetOnFire(player, self)
            end

            if ent.GetEnergy and ent.SetEnergy then
                ent:SetEnergy(ent:GetEnergy() - kFlameThrowerEnergyDamage)
            end

        end

    end

end