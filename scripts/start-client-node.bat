@echo off

rem Use local variables
setlocal

@call "%~dp0\setenv.bat"

set CONFIG_FILE= %USER_RT_FOLDER%\config\client.xml
call "%GG_RT_FOLDER%\bin\ignite.bat" -v -J-DIGNITE_REST_START_ON_CLIENT=true %CONFIG_FILE%

endlocal
title Command Prompt
if "%OS%"=="Windows_NT" @endlocal
if "%OS%"=="WINNT" @endlocal
exit /B 0
