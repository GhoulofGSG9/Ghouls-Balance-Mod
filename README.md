# Ghouls Balance Mod

**SteamWorks Mod ID**: *2dd47a50*

This mod contains various prototype balance changes based on various ideas of the NS2 balance team.

### Latest Changes (21 May 2018):
*Keep your feedback coming*

- Fade
    - Decreased the size of the Fade's hitbox. It's now in-between were it was before the last change and the current hitbox size: ![Comparison between old and new fade model](fade hitbox change.JPG)    
    - _All fade skins are disabled for now because only the normal fade model has been changed. Sorry for that._
- Cysts
    - Decreased max health of full matured Cysts to 200 (from 450).
    - Decreased the time it takes cyst to mature to 15 seconds (from 45).
    - The max health of a Cyst does no longer vary based on it's distance to the next hive.
- Vampirism
    - Vampirsim now restores 1/4 per shell of energy costs of affected abilities on a successful hit.
- Gorge Tunnel
    - Gorge tunnels cost 3 pres again.


### All Changes:

- Aliens
    - Fade
        - Decreased the size of the Fade's hitbox. It's now in-between were it was before the last change and the current hitbox size: ![Comparison between old and new fade model](fade hitbox change.JPG)    
        - _All fade skins are disabled for now because only the normal fade model has been changed. Sorry for that._
    - Upgrades
        - Autoselect upgrades at spawn
            - At spawn, previously selected upgrades will be reapplied if they are still available.
            - If the player hasn't previously selected an upgrade for an available trait, a random one will be applied at spawn.
        - Crush
            - Requires a Shift Hive (instead of a Crag Hive)
        - Silence
            - Doesn't affect attack sounds anymore
            - Requires a Shade Hive (instead of a Shift Hive)            
        - Vampirism
            - Now requires a Crag Hive (instead of a Shade Hive)
            - Doesn't cloak anymore
            - Does also restors carapace (alien armor)
            - Does restores a fraction of your max health instead of healing instead of static amount:
                - Fraction for each shell / attack:
                - Skulk Bite: 8% (6-8.9 hp)
                - Gorge Spit: 3% (4.8-5.5 hp)
                - Lerk Bite: 4.76% (7.1-8.3 hp)
                - Fade Swipe: 3% (7.5-9.3 hp)
                - Fade Stab: 6% (15-18.6 hp)
                - Onos Gore: 1.5% (18-25.2 hp)
            - If Focus is selected, Vampirism will heal additional 33% to compensate for the longer attack cooldowns.
            - Now restores 1/4 per shell of energy costs of affected abilities on a successful hit.      
        - Alien Regeneration
            - Alien Regeneration (both the upgrade and the natural one) doesn't restore health if you have been hurt less than 3 seconds ago.        
        - Regeneration 
            - Increased amount of hp regen restores every 2 secs to 4% (from 2%) of the base hp for each shell.
        - Focus
            - Attacks consume 33% more energy.            
        - Adrenaline
            - Adrenaline no longer increases the energy regeneration rate. It did increase the regeneration rate 1/sec per shell. The default energy regeneration rate is 10/sec.
            - Adrenaline increases now the max energy by 20 energy per shell (instead by only 10). Default max energy is 100.            
    - Gorge 
        - Gorge Tunnel
           - Increased the growth time to 25 seconds (from 10). So it takes now 12.5 seconds to build with heal spry instead of 5 seconds.
        - Heal Spray
            - Decreased the enrgy cost for using healspray to 10 (from 12)
        - Structure drop ability
            - Decreased the energy cost for dropping a structure (clog, hydra, babbler egg) to 15 (from 20)                       
    - Lerk
        - Increased Pres Cost to 21 (from 18)    
    - PvE
        - Drifter 
            - Added passive abilities for each hive type:
                - Camouflage (Shade Hive): Drifters turn invisible when they idle.
                - Regeneration (Crag Hive): Drifters regenerate 3% of their max hp every 2 secs while not at full health.
                - Celerity (Shift Hive): Drifters move 18% faster.
        - Cysts
            - Decreased max health of full matured Cysts to 200 (from 450).
            - Decreased the time it takes cyst to mature to 15 seconds (from 45).
            - The max health of a Cyst does no longer vary based on it's distance to the next hive.             
- Marines
    - Advanced Amory
        - The Advanced Amory now repairs armor and removes parasite        
- Rebalanced the Supply system
    - Aliens
        - Have 100 supplies per Hive
        - Supply costs:
            - Hive, Haverster, Cyst and Upgrade Chamber: 0
            - Whip: 15
            - Crag, Shift, Shade and Drifter: 10            
    - Marines
        - Start with 200 supplies and get 100 extra supplies for each additional Command Chair(CC)
        - Supply costs:
            - CCs, Extractors, Infantry Portal and Sentry Battery: 0
            - Armory, Robotic Factory and Phase Gate: 10
            - Adv. Armory and ARC Factory: 15 (5 for Upgrade)
            - Observatory, Arms Lab and Protype Lab: 15
            - MACs, Sentry, ARC: 10
        
Code @ Github: https://github.com/GhoulofGSG9/Ghouls-Balance-Mod

Feel free to leave feedback ;)
