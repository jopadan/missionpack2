# Quake III Ultimate Arena
How Quake Zero should have been

Merged code from Kr3m's missionpack plus features together with my additional things like Arena/Clan Arena gametypes, green armor and HMG from QL. Unlike missionpackplus, this is a standalone mod which doesn't require Team Arena to be installed.
 
**This is not a replacement for Team Arena! TA maps and virtually all their textures aren't included, meaning you'd still have to legally purchase Team Arena in order to enjoy all of its maps, along with most custom ones designed for TA!**

## Installation
 - Download the release from the side
 - Extract the ```missionpack2``` folder into your Quake 3 install folder. The ```missionpack2``` folder should be same folder as ```quake3.exe``` file and ```baseq3``` folder.
 - Ensure directory looks as follows:
 ```
|-C:\Program Files {x86)\Steam\steamapps\common\Quake 3 Arena\ (or something)
   |-quake3.exe
   |-baseq3\
      |-pak0.pk3
      |-...
   |-missionpack2\
      |-pakXX.pk3
      |-...
 ```

## Launching
#### Windows
 - Inside the ```missionpack2``` folder, run ```missionpack2.bat```. If you installed correctly on the CD, Steam, or GOG retail copies, the game should launch.

## New Cvars

#### New in Ultimate Arena
* ```g_gametype <0|1|2|3|4|5|6|7|8|9>``` : the gametype ints have changed since Q3 and Q3TA. The gametype values are:

  - Free For All ```0```
  - Tournament ```1```
  - Arena ```3```
  - Team Deathmatch ```4```
  - Team Arena ```5```
  - Capture the Flag ```6```
  - One Flag CTF ```7```
  - Overload ```8```
  - Harvester ```9```
* ```g_nailBounce <0|1>``` : defaults to ```1```.  QL-Style nail bounce. A value of ```1``` is on; ```0``` means off.
* ```g_arenaStartArmor <0|200>``` : allow to define the amount of armor at spawn
* ```g_arenaStartHealth <0|200>``` : allow to define the amount of health at spawn

#### From Kr3m's missionpackplus
* ```g_startingWeapon <0|14>``` : defaults to ```0```.  Choose which weapon you spawn with.
* ```g_noSelfDamage <0|1>``` : default to 0. Toggle the player self damages. A value of ```0``` means regular self damage is on; ```1``` means off.
* ```g_startAmmo*X* <0|200>``` : allow to define the amount of ammunitions for a weapon. *X* can be MG, SG, GL, RL, LG, RG, PG, BFG, NG, PL, CG
* ```g_damage*X* <0|999>``` : allow to define the amount of damage for a weapon. *X* can be MG, SG, GL, RL, LG, RG, PG, BFG, NG, PL, CG
* ```g_sgPellets <1|?>``` : number of shotgun pellets per shot
* ```g_sgPelletSpread <1|?>``` : amount of shotgun spread defaults to ```700```
* ```g_splashDamage*X* <1|?>``` : allow to define the amount of splash damage for a weapon. *X* can be GL, RL, PG, BFG
* ```g_splashRadius*X* <1|?>``` : allow to define the amount of splash damage for a weapon. *X* can be GL, RL, PG, BFG
* ```g_velocityRL <1|?>``` : how fast the rockets move
* ```g_startArmor <0|200>``` : allow to define the amount of armor at spawn
* ```g_startHealth <0|200>``` : allow to define the amount of health at spawn
* ```g_ammoRespawn <seconds>``` : ammo respawn times for FFA and Duel
* ```g_ammoTeamRespawn <seconds>``` : ammo respawn times for team gametypes
* ```g_armorRespawn <seconds>``` : armor respawn times for FFA and Duel
* ```g_armorTeamRespawn <seconds>``` : armor respawn times for team gametypes
* ```g_healthRespawn <seconds>``` : health respawn times for FFA and Duel
* ```g_healthTeamRespawn <seconds>``` : health respawn times for team gametypes
* ```g_megahealthRespawn <seconds>``` : megahealth respawn times for FFA and Duel
* ```g_megahealthTeamRespawn <seconds>``` : megahealth respawn times for team gametypes
* ```g_powerupRespawn <seconds>``` : powerup respawn times for FFA and Duel
* ```g_powerupTeamRespawn <seconds>``` : powerup respawn times for team gametypes
* ```g_holdableRespawn <seconds>``` : holdable respawn times for FFA and Duel
* ```g_holdableTeamRespawn <seconds>``` : holdable respawn times for team gametypes
* ```g_grapple <0|1>``` : enable grapple hook A value of ```1``` is on; ```0``` means off.
* ```g_grappleDelayTime <0|?>``` : delay time in milliseconds
* ```g_grappleHoldTime <0|?>``` : how long the grapple will hold on in seconds 0 for infinite camping
* ```g_grappleSpeed <0|?>``` : deploy speed in UPS
* ```g_grapplePull <0|?>``` : pull speed in UPS
* ```g_grappleDamage <0|?>``` : grapple hook damage ```0``` to disable

### Flagged cvars

The following cvars use a "bit flag" value which acts as a combination of integers to specify a group of items:

#### New in Ultimate Arena
* ```g_arenaWpflags <VAL>``` : defaults to ```2175```.  Starting weapons in loudouts for Arena / Team Arena gamemodes. Default value of ```2175``` is QL CA loadout. See ```g_wpflags``` for weapon bits.

#### From Kr3m's missionpackplus
* ```g_wpflags <VAL>``` : what weapons a player should have at spawn. &#x1F536; NOTE: It changed from ```wpflags``` from missionpackplus
  
The corresponding bits for ```VAL``` are:

* Machinegun	```1```
* Shotgun	```2```
* Grenade Launcher	```4```
* Rocket Launcher	```8```
* Lightning Gun	```16```
* Railgun	```32```
* Plasma Gun	```64```
* BFG10K	```128```
* Nailgun ```256```
* Prox Launcher ```512```
* Chaingun ```1024```
* HMG ```2048``` *Ultimate Arena Only*

So, in order to let a player starts with a shotgun, a grenade launcher and a rocket launcher you can use "wpflags 14" (for 14 is 2+4+8). Note that players always start with the machinegun and the gauntlet.

The **removeX** cvars allow to choose to remove items from a map, **X** is either **ammo**, **item**, **powerup** or **weapon**:

* ```removeammo <VAL>``` use the same numbers as wpflags but for the corresponding ammunition
* ```removeeapon <VAL>``` use the same numbers as wpflags
* ```removeitem <VAL>```, where VAL can used the following values:
  * item_armor_shard ```1```
  * item_armor_combat ```2```
  * item_armor_body ```4```
  * item_health_small ```8```
  * item_health ```16```
  * item_health_large ```32```
  * item_health_mega ```64```
  * holdable_teleporter ```128```
  * holdable_medkit ```256```
 * removepowerup "VAL", where VAL can used the following values:
   * item_quad ```1```
   * item_enviro ```2```
   * item_haste ```4```
   * item_invis ```8```
   * item_regen ```16```
   * item_flight ```32```

## Build Instructions
The build system included should be completely portable provided that you are on Windows (with Powershell for final pk3 zipping command).
- Download the repository in zip file
- Make a gamedir folder in the root of your Quake 3/ioquake3 install called `missionpack2`
- Extract the *contents* of the repository folder into `missionpack2`
- Navigate to `missionpack2\src`
- Run `make.bat` -- this will compile all 3 QVM modules with `-DMISSIONPACK` and `-DMISSIONPACK2`, copy assets and create core/map .pk3 files file ready to go
- Use the `missionpack2.bat` file in its place to run. Alternatively, as always, you can start the mod with any engine of your choice:
  `<ENGINE_BINARY>.exe +set fs_game missionpack2`
- FIGHT!

## To do
- Finish FFA Arena
- Update bot code to have an objective in games like Arena/Team Arena where there are no pickups
- Some custom maps made specifically for this gamemode if time permits
- Cvar ```removeitem``` to incorporate Green Armor


 ## Credits
 - **Kevin "Kr3m" Remisoski** for missionpackplus code (see <https://github.com/Kr3m/missionpackplus> for additional credits for unlagged code, etc)
 - **RemyTek** for their foundation mod code which also ended up merged as it was used as the basis for missionpackplus (see <https://github.com/RemyTek/foundation>)
 - **Kevin "79DieselRabbit" Worrel** for Frozen Colors map (named as mp2team1 -- we needed at least one amazing custom map supporting 1FCTF, etc)
 - **Hubster** for his famous Aerowalk conversion (named as mp2tourney1 -- green armor!)
 - **Dmitri "Dimmskii" Poterianski** (myself) for UI work and upscales, QL model conversions, coding, anything else I forgot to mention
 - **Id Software** for Almost Lost map, Beyond Reality II map, and everything else making all of this possible!
