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

REM Create symbolic link for the entire script directory
mklink /D "!targetDirectory!\TypstTemplates" "!scriptPath!"

if errorlevel 1 (
    echo Failed to create symbolic link to TypstTemplates folder
    exit /b 1
) else (
    echo Symbolic link to TypstTemplates folder created successfully
    exit /b 0
)
