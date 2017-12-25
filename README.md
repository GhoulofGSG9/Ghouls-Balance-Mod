# Ghouls Balance Mod

**SteamWorks Mod ID**: *2dd47a50*

This mod contains various prototype balance changes based on various ideas of the NS2 balance team.

Current changes:        

- Aliens
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
            - Rebalanced health gain values (for each shell):
                - Skulk: 5 (from 5)
                - Gorge: 6 (from 5)
                - Lerk (Bite): 5 (from 3)
                - Lerk (Spike): 2 (from 0.66)
                - Fade: 12 (from 6.66)
                - Onos: 20 (from  13.33)
            - If Focus is selected, Vampirism will heal additional 33% to compensate for the longer attack cooldowns.
        
        - Alien Regeneration
            - Alien Regeneration (both the upgrade and the natural one) doesn't restore health if you have been hurt less than 3 seconds ago.
        
        - Regeneration 
            - Increased amount of hp regen restores every 2 secs to 4% (from 2%) of the base hp for each shell.

        - Focus
            - Attacks consume 33% more energy.

- Marines
    
- PvE
    - Drifter 
        - Added passive abilities for each hive type:
            - Camouflage (Shade Hive): Drifters turn invisible when they idle.
            - Regeneration (Crag Hive): Drifters regenerate 3% of their max hp every 2 secs while not at full health.
            - Celerity (Shift Hive): Drifters move 18% faster.

Code @ Github: https://github.com/GhoulofGSG9/Ghouls-Balance-Mod

Feel free to leave feedback ;)
