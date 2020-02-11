@echo off

echo %cd%

if exist "%ProgramFiles%\Git\bin\bash.exe" (
    "%ProgramFiles%\Git\bin\bash.exe" -c "./.ci/spec.sh"
) else (
    echo bash not found..
)
