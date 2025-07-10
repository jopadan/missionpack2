@ECHO OFF

cd %~dp0

:MAKE_QVM
echo MAKE QVM
start /wait code\game\game_ua.bat
start /wait code\cgame\cgame_ua.bat
start /wait code\ui\ui.bat
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
start /wait ..\missionpack2.bat +set sv_pure 0
goto QUIT


:QUIT
echo Press any key to exit . . .
pause > NUL
