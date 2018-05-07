# Ghouls Balance Mod

**SteamWorks Mod ID**: *2dd47a50*

This mod contains various prototype balance changes based on various ideas of the NS2 balance team.

###Latest Changes (7 May 2018):

- Lerk
    - Increased Pres Cost to 21 (from 18).
- Gorge Tunnel
    - Increased the Pres cost to 4 (from 3).
    - Increased the growth time to 30 seconds (from 10). So it takes now 15 seconds to build with heal spry instead of 5 seconds.
- Adrenaline
    - Adrenaline no longer increases the energy regeneration rate. It did increase the regeneration rate 1/sec per shell. The default energy regeneration rate is 10/sec.
    - Adrenaline increases now the max energy by 20 energy per shell (instead by only 10). Default max energy is 100.
- Vampirism
    - Vampirism now also restors carapace (alien armor)
    - Vampirsim now restores a fraction of your max health instead of a static amount:
        - Fraction for each shell / attack:
        - Skulk Bite: 8% (6-8.9 hp)
        - Gorge Spit: 3% (4.8-5.5 hp)
        - Lerk Bite: 4.76% (7.1-8.3 hp)
        - Fade Swipe: 3% (7.5-9.3 hp)
        - Fade Stab: 6% (15-18.6 hp)
        - Onos Gore: 1.5% (18-25.2 hp)
- Advanced Amory
    - The Advanced Amory now repairs armor and removes parasite    

###All Changes:

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
           - Increased the Pres cost to 4 (from 3).
           - Increased the growth time to 30 seconds (from 10). So it takes now 15 seconds to build with heal spry instead of 5 seconds.                    
    - Lerk
        - Increased Pres Cost to 21 (from 18)    
    - PvE
        - Drifter 
            - Added passive abilities for each hive type:
                - Camouflage (Shade Hive): Drifters turn invisible when they idle.
                - Regeneration (Crag Hive): Drifters regenerate 3% of their max hp every 2 secs while not at full health.
                - Celerity (Shift Hive): Drifters move 18% faster.
                
- Marines
    - Advanced Amory
        - The Advanced Amory now repairs armor and removes parasite
        
Code @ Github: https://github.com/GhoulofGSG9/Ghouls-Balance-Mod

Feel free to leave feedback ;)
