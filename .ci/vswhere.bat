@echo off

@setlocal enabledelayedexpansion
SET LIST=false

if defined VS90COMNTOOLS (
    SET LIST=!LIST!, 2009
)
if defined VS100COMNTOOLS (
    SET LIST=!LIST!, 2010
)
if defined VS110COMNTOOLS (
    SET LIST=!LIST!, 2012
)
if defined VS120COMNTOOLS (
    SET LIST=!LIST!, 2013
)
if defined VS140COMNTOOLS (
    SET LIST=!LIST!, 2015
)

if exist "%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\vswhere.exe" (
    for /f "usebackq" %%v in ( `"%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\vswhere.exe" -products * -property catalog_productLineVersion` ) do (
        SET LIST=!LIST!, %%v
    )
)

echo !LIST:false,=!
