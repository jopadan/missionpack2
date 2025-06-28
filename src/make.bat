@ECHO OFF

cd %~dp0

echo COMPILE QVM
start /wait code\game\game_ua.bat
start /wait code\cgame\cgame_ua.bat
start /wait code\ui\ui.bat

echo CREATE TEMP FOLDER AND COPY FILES
md _temp
cd _temp
md vm
cd vm
copy ..\..\code\game\vm\qagame.qvm .\
copy ..\..\code\cgame\vm\cgame.qvm .\
copy ..\..\code\ui\vm\ui.qvm .\
cd ..
md ui
cd ui
xcopy /S /E ..\..\ui .\
cd ..
xcopy /S /E ..\assets\* .\

echo CREATE MAIN PK3
powershell Compress-Archive .\* pak050.zip
ren pak050.zip pak050.pk3

echo MOVE PK3 AND DELETE TEMP FOLDER
move pak050.pk3 ..\..\
cd ..
rd /S /Q _temp

echo CREATE MAP PK3 FILES
md _temp
cd _temp
for /f "delims=" %%i in ('dir /ad/b ..\maps\*') do (
powershell Compress-Archive ..\maps\%%i\* %%i.zip
ren %%i.zip %%i.pk3
move %%i.pk3 ..\..\
)
cd ..
rd /S /Q _temp

:QUIT
