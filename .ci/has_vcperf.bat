@echo off

call %~dp0\vcvars.bat 16.0 x64 > nul 2>&1

which vcperf > nul 2>&1
if errorlevel 1 (
    echo false
) else (
    echo true
)
