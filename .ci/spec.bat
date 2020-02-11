@echo off

if exist "%ProgramFiles%\Git\bin\bash.exe" (
    "%ProgramFiles%\Git\bin\bash.exe" -c "./spec.sh"
) else (
    echo bash not found..
)
