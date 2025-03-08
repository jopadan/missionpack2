cd %~dp0

rem COMPILE QVM
start /wait code\game\game_ua.bat
start /wait code\cgame\cgame_ua.bat
start /wait code\ui\ui.bat

rem CREATE TEMP FOLDER AND COPY FILES
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

rem CREATE PK3
powershell Compress-Archive .\* z-pak100.zip
ren z-pak100.zip z-pak100.pk3

rem MOVE PK3 AND DELETE TEMP FOLDER
move z-pak100.pk3 ..\..\
cd ..
rd /S /Q _temp

:QUIT
