Script.Load("lua/SupplyUserMixin.lua")

if Server then
    local oldOnInitialized = Observatory.OnInitialized
    function Observatory:OnInitialized()
        oldOnInitialized(self)

        InitMixin(self, SupplyUserMixin)
    end
end