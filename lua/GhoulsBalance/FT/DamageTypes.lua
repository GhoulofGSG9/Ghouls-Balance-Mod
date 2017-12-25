local oldGetDamageByType = GetDamageByType
function GetDamageByType(target, attacker, doer, damage, damageType, hitPoint, weapon)
    if not kDamageTypeGlobalRules or not kDamageTypeRules then
        oldGetDamageByType(target, attacker, doer, damage, damageType, hitPoint, weapon)

        kDamageTypeRules[kDamageType.Flamethrower] = {}
        table.insert(kDamageTypeRules[kDamageType.Flamethrower], MultiplyFlameAble)
        table.insert(kDamageTypeRules[kDamageType.Flamethrower], MultiplyForStructures)
        table.insert(kDamageTypeRules[kDamageType.Flamethrower], DoubleHealthPerArmorForPlayers)
    end

    return oldGetDamageByType(target, attacker, doer, damage, damageType, hitPoint, weapon)
end