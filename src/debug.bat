setlocal
@echo off

set oldcd=%cd%

cd %~dp0

:MAKE_QVM
echo MAKE QVM
cmd /c code\game\game_ua.bat -DDEBUG
cmd /c code\cgame\cgame_ua.bat -DDEBUG
cmd /c code\ui\ui.bat -DDEBUG
echo ...Done!
goto COPYFILES_QVM

:COPYFILES_QVM
echo COPY QVM FILES
md ..\vm
copy code\game\vm\qagame.qvm ..\vm\
copy code\cgame\vm\cgame.qvm ..\vm\
copy code\ui\vm\ui.qvm ..\vm\
echo ...Done!
::goto COPYFILES_UI
goto RUN_GAME

:COPYFILES_UI
echo COPY UI FILES
md ..\ui
xcopy /S /E ui ..\ui\
cd ..
xcopy /S /E ..\assets\* .\
echo ...Done!
goto RUN_GAME


:RUN_GAME
start ..\missionpack2.bat +set sv_pure 0
goto QUIT


:QUIT
cd %oldcd%
endlocal
echo Press any key to exit . . .
pause > NUL
