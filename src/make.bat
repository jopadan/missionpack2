setlocal
@echo off

set oldcd=%cd%

set VERSION=054
set PK3_NAME=pak%VERSION%

cd %~dp0

:MAKE_QVM
echo MAKE QVM
cmd /c code\game\game_ua.bat
cmd /c code\cgame\cgame_ua.bat
cmd /c code\ui\ui.bat

:COPYFILES_QVM
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
echo ...Done!

echo CREATE %PK3_NAME%.pk3
powershell Compress-Archive .\* %PK3_NAME%.zip
ren %PK3_NAME%.zip %PK3_NAME%.pk3
move %PK3_NAME%.pk3 ..\..\
cd ..
rd /S /Q _temp
echo ...Done!

echo CREATE CONTENT PK3 FILES
md _temp
cd _temp
for /f "delims=" %%i in ('dir /ad/b ..\pk3\*') do (
echo %%i.pk3
powershell Compress-Archive ..\pk3\%%i\* %%i.zip
ren %%i.zip %%i.pk3
move %%i.pk3 ..\..\
echo ...Done!
)
cd ..
rd /S /Q _temp
goto QUIT


:QUIT
cd %oldcd%
endlocal
echo Press any key to exit . . .
pause > NUL
