setlocal
@echo on

set oldcd=%cd%

cd %~dp0
cd ..\..\bin
set PATH=%cd%;%PATH%
cd ..\code\cgame

rem make sure we have a safe environement
set LIBRARY=
set INCLUDE=

mkdir vm
cd vm
set cc=q3lcc -DQ3_VM -DMISSIONPACK -DMISSIONPACK2 -DCGAME -S -Wf-target=bytecode -Wf-g -I..\..\cgame -I..\..\game -I..\..\ui %1

%cc% ../../game/bg_misc.c
@if errorlevel 1 goto errorquit
%cc% ../../game/bg_pmove.c
@if errorlevel 1 goto errorquit
%cc% ../../game/bg_slidemove.c
@if errorlevel 1 goto errorquit
%cc% ../../game/bg_lib.c
@if errorlevel 1 goto errorquit
%cc% ../../game/q_math.c
@if errorlevel 1 goto errorquit
%cc% ../../game/q_shared.c
@if errorlevel 1 goto errorquit
%cc% ../cg_consolecmds.c
@if errorlevel 1 goto errorquit
%cc% ../cg_draw.c
@if errorlevel 1 goto errorquit
%cc% ../cg_drawtools.c
@if errorlevel 1 goto errorquit
%cc% ../cg_effects.c
@if errorlevel 1 goto errorquit
%cc% ../cg_ents.c
@if errorlevel 1 goto errorquit
%cc% ../cg_event.c
@if errorlevel 1 goto errorquit
%cc% ../cg_info.c
@if errorlevel 1 goto errorquit
%cc% ../cg_localents.c
@if errorlevel 1 goto errorquit
%cc% ../cg_main.c
@if errorlevel 1 goto errorquit
%cc% ../cg_marks.c
@if errorlevel 1 goto errorquit
%cc% ../cg_players.c
@if errorlevel 1 goto errorquit
%cc% ../cg_playerstate.c
@if errorlevel 1 goto errorquit
%cc% ../cg_predict.c
@if errorlevel 1 goto errorquit
%cc% ../cg_scoreboard.c
@if errorlevel 1 goto errorquit
%cc% ../cg_servercmds.c
@if errorlevel 1 goto errorquit
%cc% ../cg_snapshot.c
@if errorlevel 1 goto errorquit
%cc% ../cg_view.c
@if errorlevel 1 goto errorquit
%cc% ../cg_weapons.c
@if errorlevel 1 goto errorquit
%cc% ../../ui/ui_shared.c
@if errorlevel 1 goto errorquit
%cc% ../cg_newdraw.c
@if errorlevel 1 goto errorquit

q3asm -vq3 -r -m -v -f ../cgame_ta

@echo off

@if errorlevel 1 goto errorquit

goto quit

:errorquit
echo ERROR!
echo Press any key to exit . . .
pause > nul
goto quit

:quit
cd %oldcd%
endlocal
