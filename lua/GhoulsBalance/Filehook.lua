--Check for diabling global
if gDisableUWEBalance then return end

--changelog
ModLoader.SetupFileHook( "lua/Player_Client.lua", "lua/GhoulsBalance/changelog.lua", "post" )

--drifter techs
ModLoader.SetupFileHook( "lua/Drifter.lua", "lua/GhoulsBalance/DrifterPassives/Drifter.lua", "post" )
ModLoader.SetupFileHook( "lua/AlienTechMap.lua", "lua/GhoulsBalance/DrifterPassives/AlienTechMap.lua", "post" )
ModLoader.SetupFileHook( "lua/Hive.lua", "lua/GhoulsBalance/DrifterPassives/Hive.lua", "post" )

--Alien upgrades tech swap
ModLoader.SetupFileHook( "lua/TechTree_Server.lua", "lua/GhoulsBalance/AlienUpgradeSwap/TechTree_Server.lua", "post" )
ModLoader.SetupFileHook( "lua/AlienTeam.lua", "lua/GhoulsBalance/AlienUpgradeSwap/AlienTeam.lua", "post" )
ModLoader.SetupFileHook( "lua/AlienTechMap.lua", "lua/GhoulsBalance/AlienUpgradeSwap/AlienTechMap.lua", "post" )
--ModLoader.SetupFileHook( "lua/GUIUtility.lua", "lua/GhoulsBalance/AlienUpgradeSwap/GUIUtility.lua", "post" )
ModLoader.SetupFileHook( "lua/GUIUpgradeChamberDisplay.lua", "lua/GhoulsBalance/AlienUpgradeSwap/GUIUpgradeChamberDisplay.lua", "post" )
ModLoader.SetupFileHook( "lua/TechData.lua", "lua/GhoulsBalance/AlienUpgradeSwap/TechData.lua", "post" )
ModLoader.SetupFileHook( "lua/DamageTypes.lua", "lua/GhoulsBalance/AlienUpgradeSwap/DamageTypes.lua", "post" )
ModLoader.SetupFileHook( "lua/Alien_Server.lua", "lua/GhoulsBalance/AlienUpgradeSwap/Alien_Server.lua", "post" )

--Vampirism changes
ModLoader.SetupFileHook( "lua/DamageTypes.lua", "lua/GhoulsBalance/Vampirism/DamageTypes.lua", "post" )
ModLoader.SetupFileHook( "lua/Alien.lua", "lua/GhoulsBalance/Vampirism/Alien.lua", "post" )

--Silence changes
ModLoader.SetupFileHook( "lua/Weapons/Alien/Ability.lua", "lua/GhoulsBalance/Silence/Ability.lua", "post" )
ModLoader.SetupFileHook( "lua/Weapons/Alien/DropStructureAbility.lua", "lua/GhoulsBalance/Silence/DropStructureAbility.lua", "post" )
ModLoader.SetupFileHook( "lua/Weapons/Alien/Metabolize.lua", "lua/GhoulsBalance/Silence/Metabolize.lua", "post" )

--Regeneration
ModLoader.SetupFileHook( "lua/Alien_Server.lua", "lua/GhoulsBalance/Regeneration/Alien_Server.lua", "post" )
ModLoader.SetupFileHook( "lua/Balance.lua", "lua/GhoulsBalance/Regeneration/Balance.lua", "post" )

--Focus
ModLoader.SetupFileHook( "lua/Ability.lua", "lua/GhoulsBalance/Focus/Ability.lua", "post" )

--Auto select upgrades at spawn for aliens
ModLoader.SetupFileHook( "lua/Egg.lua", "lua/GhoulsBalance/SpawnWithUpgrades/Egg.lua", "post" )

--Lerk PRes change
ModLoader.SetupFileHook( "lua/Balance.lua", "lua/GhoulsBalance/LerkPRes/Balance.lua", "post" )

--Increase cost and build time of the gorge tunnel
ModLoader.SetupFileHook( "lua/Balance.lua", "lua/GhoulsBalance/GorgeTunnelNerf/Balance.lua", "post" )

--Adrenaline change to not regen energy anymore
ModLoader.SetupFileHook( "lua/Alien.lua", "lua/GhoulsBalance/Adrenaline/Alien.lua", "post" )
ModLoader.SetupFileHook( "lua/BalanceMisc.lua", "lua/GhoulsBalance/Adrenaline/BalanceMisc.lua", "post" )
ModLoader.SetupFileHook( "lua/Balance.lua", "lua/GhoulsBalance/Adrenaline/Balance.lua", "post" )

--Suppy Rebalance
ModLoader.SetupFileHook( "lua/BalanceMisc.lua", "lua/GhoulsBalance/Supply/BalanceMisc.lua", "post" )
ModLoader.SetupFileHook( "lua/NS2Utility.lua", "lua/GhoulsBalance/Supply/NS2Utility.lua", "post" )
ModLoader.SetupFileHook( "lua/TechData.lua", "lua/GhoulsBalance/Supply/TechData.lua", "post" )
ModLoader.SetupFileHook( "lua/ArmsLab.lua", "lua/GhoulsBalance/Supply/ArmsLab.lua", "post" )
ModLoader.SetupFileHook( "lua/Observatory.lua", "lua/GhoulsBalance/Supply/Observatory.lua", "post" )
ModLoader.SetupFileHook( "lua/PrototypeLab.lua", "lua/GhoulsBalance/Supply/PrototypeLab.lua", "post" )
ModLoader.SetupFileHook( "lua/Armory.lua", "lua/GhoulsBalance/Supply/Armory.lua", "post" )
ModLoader.SetupFileHook( "lua/RoboticsFactory.lua", "lua/GhoulsBalance/Supply/RoboticsFactory.lua", "post" )

-- Improved Advanced Armory
ModLoader.SetupFileHook( "lua/Armory.lua", "lua/GhoulsBalance/AdvAmoryAmorRepair/Armory.lua", "post" )

-- Smaller fade hitbox
ModLoader.SetupFileHook( "lua/FadeVariantMixin.lua", "lua/GhoulsBalance/FadeHitbox/FadeVariantMixin.lua", "post" )

-- Max cyst health no longer depending on distance to hive
ModLoader.SetupFileHook( "lua/Cyst.lua", "lua/GhoulsBalance/CystHealth/Cyst.lua", "post" )
ModLoader.SetupFileHook( "lua/BalanceMisc.lua", "lua/GhoulsBalance/CystHealth/BalanceMisc.lua", "post" )