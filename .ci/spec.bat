@echo off

call %~dp0\vcvars.bat 16.0 x64

if exist "%ProgramFiles%\Git\bin\bash.exe" (
    "%ProgramFiles%\Git\bin\bash.exe" -c "./.ci/spec.sh"
) else (
    echo bash not found..
)
