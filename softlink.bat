@echo off
setlocal enabledelayedexpansion

REM Check if the target directory parameter is provided
if "%1"=="" (
    echo Please provide the target directory parameter
    exit /b 1
)

set "targetDirectory=%1"

REM Get the current script directory
set "scriptPath=%~dp0"

REM Define an array of folders to link
set "folders=templates fonts"

REM Create symbolic links for folders in the array
for %%F in (%folders%) do (
    mklink /D "!targetDirectory!\%%F" "!scriptPath!\%%F"
    if !errorlevel! neq 0 (
        echo Failed to create symbolic link for folder %%F
        exit /b 1
    )
)

echo Symbolic links created successfully
exit /b 0
