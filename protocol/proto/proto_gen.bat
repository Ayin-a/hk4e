@echo off
set SOURCE_FOLDER=.
for /f "delims=" %%i in ('dir /b "%SOURCE_FOLDER%\*.proto"') do (
echo protoc -I . --go_out=. %%i
protoc -I . --go_out=. %%i
)
echo ok
pause
