Flame.kDamage = 8

local kUpdateTime = 0.3
local function UpdateLifetime(self)

    self.lifeTime = self.lifeTime - kUpdateTime

    self:Detonate(nil)

    if self.lifeTime <= 0 then

        DestroyEntity(self)

        return false

    end

    return true

end

-- Don't detonate on initialization to give enemy a chance to move out of the flamepuddle
function Flame:OnInitialized()

    ScriptActor.OnInitialized(self)

    if Server then

        -- intervall of dealing damage
        self.lifeTime = Flame.kLifeTime
        self:AddTimedCallback(UpdateLifetime, kUpdateTime)

    elseif Client then

        self.fireEffect = Client.CreateCinematic(RenderScene.Zone_Default)

        local cinematicName = Flame.kFireEffect

        self.fireEffect:SetCinematic(cinematicName)
        self.fireEffect:SetRepeatStyle(Cinematic.Repeat_Endless)
        self.fireEffect:SetIsVisible(self:GetIsVisible())

        local coords = Coords.GetIdentity()
        coords.origin = self:GetOrigin()
        self.fireEffect:SetCoords(coords)

        Client.CreateTimeLimitedDecal(Flame.kDecalMaterial , self:GetCoords(), 3, Flame.kLifeTime)

    end

end