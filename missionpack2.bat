@echo off
cd %~dp0
cd ..
IF EXIST ioquake3.x86_64.exe (
	start ioquake3.x86_64.exe +set fs_game missionpack2
) ELSE (
	IF EXIST ioquake3.x86.exe (
		start ioquake3.x86.exe +set fs_game missionpack2
	) ELSE (
		start quake3.exe +set fs_game missionpack2
	)
)
