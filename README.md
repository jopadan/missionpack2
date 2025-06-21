# missionpack2 - Quake 3 Ultimate Arena
 Merged code from Kr3m's missionpack plus features together with my additional things like Arena/Team Arena gamemodes, green armor and HMG from QL

## Instructions
Currently, there are no release packages available, however, the build system included should be completely portable provided that you are on Windows (with Powershell for final pk3 zipping command).
- Download the repository in zip file
- Make a gamedir folder in the root of your Quake 3/ioquake3 install called `missionpack2`
- Extract the *contents* of the repository folder into `missionpack2`
- Navigate to `missionpack2\src`
- Run `make.bat` -- this will compile all 3 QVM modules with DMISSIONPACK and DMISSIONPACK2, copy assets and package it all into one pretty pk3 file ready to go
- Use the `missionpack2.bat` file in its place to run **for ioquake3 x86_64 only**. `start quake3.exe +set fs_game missionpack2` or `start ioquake3.x86_64.exe +set fs_game missionpack2` or `start ioquake3.x86.exe +set fs_game missionpack2` will work depending on which client you use. You get the idea.

## To do
- Finish coding Arena/Team Arena gametype logic
- Proper HMG fire rate (I can't easily find the nextFire code like in Q2)
- Cvar to disable nailgun bounce
- Finish getting rid of clans system from TA -- g_redTeam and g_blueTeam, ui logos, etc
- Anything else? Let me know in the comments below :)



 ## Credits
 - **Kevin "Kr3m" Remisoski** for missionpackplus code (see <https://github.com/Kr3m/missionpackplus> for additional credits for unlagged code, etc)
 - **Kevin "79DieselRabbit" Worrel** for Frozen Colors map (named as mp2team1 -- we needed at least one amazing custom map supporting 1FCTF, etc)
 - **Hubster** for his famous Aerowalk conversion (named as mp2tourney1 -- green armor!)
 - **Dmitri "Dimmskii" Poterianski** (myself) for UI work and upscales, QL model conversions, coding, anything else I forgot to mention
 - **Id Software** for making this all possible!
