@echo off
REM Change to the directory of the script
cd /d "%~dp0"

REM save original directory
set "originalDir=%CD%"

rmdir /s /q server-output
mkdir server-output
cd server-output

java -jar ../build-tools/packwiz-installer-bootstrap.jar -g -s server ../pack.toml

REM go back
cd "%originalDir%"