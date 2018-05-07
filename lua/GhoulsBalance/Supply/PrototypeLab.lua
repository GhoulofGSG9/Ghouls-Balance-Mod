Script.Load("lua/SupplyUserMixin.lua")

if Server then
    local oldOnInitialized = PrototypeLab.OnInitialized
    function PrototypeLab:OnInitialized()
        oldOnInitialized(self)

        InitMixin(self, SupplyUserMixin)
    end
end
