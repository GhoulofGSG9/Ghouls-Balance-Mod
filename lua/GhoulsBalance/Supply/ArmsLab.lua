Script.Load("lua/SupplyUserMixin.lua")

if Server then
    local oldOnInitialized = ArmsLab.OnInitialized
    function ArmsLab:OnInitialized()
        oldOnInitialized(self)

        InitMixin(self, SupplyUserMixin)
    end
end