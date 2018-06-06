kBiteLeapVampirismScalar = 0.08
kParasiteVampirismScalar = 0
kSpitVampirismScalar = 0.03
kHealSprayVampirismScalar = 0
kLerkBiteVampirismScalar = 0.0476
kSpikesVampirismScalar = 0
kSwipeVampirismScalar = 0.03
kStabVampirismScalar = 0.06
kGoreVampirismScalar = 0.015

kAlienVampirismNotHealArmor = false

kLifeformVampirismScalars = {} --FIXME change to Weapon/Doer classnames, not lifeform
kLifeformVampirismScalars["Skulk"] = kBiteLeapVampirismScalar
kLifeformVampirismScalars["Gorge"] = kSpitVampirismScalar
kLifeformVampirismScalars["LerkBite"] = kLerkBiteVampirismScalar
kLifeformVampirismScalars["LerkSpikes"] = kSpikesVampirismScalar
kLifeformVampirismScalars["SwipeBlink"] = kSwipeVampirismScalar
kLifeformVampirismScalars["StabBlink"] = kStabVampirismScalar
kLifeformVampirismScalars["Onos"] = kGoreVampirismScalar

function NS2Gamerules_GetAlienVampiricLeechFactor( attacker, doer, damageType, veilLevel )

	local leechFactor = 0
	local attackerClass = attacker:GetClassName()
	local doerClassName = doer:GetClassName()

	if attackerClass == "Lerk" then

		attackerClass = doerClassName

		if attackerClass == "SporeCloud" then
			return 0
		end

		--Note: this will need to be adjusted should Lerk Spikes damage type ever change
		if attackerClass == "LerkBite" and damageType == kDamageType.Puncture then --Spikes
			attackerClass = "LerkSpikes"
		end

	elseif attackerClass == "Gorge" then
		if doerClassName == "DotMarker" or doerClassName == "Babbler" or doerClassName == "Hydra" or damageType == kDamageType.Biological then
			return 0
		end
	elseif attackerClass == "Onos" and doerClassName == "Shockwave" then
		return 0
	elseif attackerClass == "Skulk" and ( doerClassName == "Parasite" or doerClassName == "XenocideLeap" )then
		return 0
	elseif attackerClass == "Fade" then
		attackerClass = doerClassName
	end

	local baseLeechAmount = kLifeformVampirismScalars[attackerClass]
	if baseLeechAmount and type(baseLeechAmount) == "number" then
		leechFactor = attacker:GetMaxHealth() * ( veilLevel * baseLeechAmount )

		if attacker:GetHasUpgrade( kTechId.Focus ) then
			leechFactor = leechFactor * (1 + kFocusAttackSlowAtMax)
		end

	end

	return leechFactor

end