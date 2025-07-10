setlocal
@echo off

set oldcd=%cd%

cd %~dp0
cd ..
IF EXIST ioquake3.x86_64.exe (
	start ioquake3.x86_64.exe +set fs_game missionpack2
	goto QUIT
) ELSE (
	IF EXIST ioquake3.x86.exe (
		start ioquake3.x86.exe +set fs_game missionpack2
		goto QUIT
	) ELSE (
		start quake3.exe +set fs_game missionpack2
		goto QUIT
	)
)

:QUIT
cd %oldcd%
endlocal
