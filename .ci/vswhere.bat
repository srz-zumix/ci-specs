@echo off

if not exist "%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\vswhere.exe" (
    echo false
) else (
    "%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\vswhere.exe" -products * -property catalog_productLineVersion
)
