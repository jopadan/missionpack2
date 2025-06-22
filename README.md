# missionpack2 - Quake III Ultimate Arena
 Merged code from Kr3m's missionpack plus features together with my additional things like Arena/Clan Arena gametypes, green armor and HMG from QL. Unlike missionpackplus, this is a standalone mod which doesn't require Team Arena to be installed.
 
**This is not a replacement for Team Arena! TA maps and virtually all their textures aren't included, meaning you'd still have to legally purchase Team Arena in order to enjoy all of its maps, along with most custom ones designed for TA!**

## Instructions
Currently, there are no release packages available, however, the build system included should be completely portable provided that you are on Windows (with Powershell for final pk3 zipping command).
- Download the repository in zip file
- Make a gamedir folder in the root of your Quake 3/ioquake3 install called `missionpack2`
- Extract the *contents* of the repository folder into `missionpack2`
- Navigate to `missionpack2\src`
- Run `make.bat` -- this will compile all 3 QVM modules with `-DMISSIONPACK` and `-DMISSIONPACK2`, copy assets and package it all into one pretty pk3 file ready to go
- Use the `missionpack2.bat` file in its place to run. Alternatively, as always, you can start the mod with any engine of your choice:
  `<ENGINE_BINARY>.exe +set fs_game missionpack2`
- FIGHT!

## To do
- Finish coding Arena/Team Arena gametype logic
- Update bot code to have an objective in games like Arena/Team Arena where there are no pickups
- ~~Proper HMG fire rate (I can't easily find the nextFire code like in Q2)~~
- ~~Cvar to disable nailgun bounce~~
- Finish getting rid of clans system from TA -- g_redTeam and g_blueTeam, ui logos, etc
- Update credits screen with ones found in this README.md along with removing some things like single player, baseq3 button, and possibly rules (we will make a c. 1990s HTML game manual?)
- Some custom maps made specifically for this gamemode if time permits
- Anything else? Let me know in the comments below :)



 ## Credits
 - **Kevin "Kr3m" Remisoski** for missionpackplus code (see <https://github.com/Kr3m/missionpackplus> for additional credits for unlagged code, etc)
 - **Kevin "79DieselRabbit" Worrel** for Frozen Colors map (named as mp2team1 -- we needed at least one amazing custom map supporting 1FCTF, etc)
 - **Hubster** for his famous Aerowalk conversion (named as mp2tourney1 -- green armor!)
 - **Dmitri "Dimmskii" Poterianski** (myself) for UI work and upscales, QL model conversions, coding, anything else I forgot to mention
 - **Id Software** for Almost Lost map, Beyond Reality II map, and everything else making all of this possible!
