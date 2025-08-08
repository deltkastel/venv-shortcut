@echo off
set VENV_NAME=venv
if not "%~1"=="" set VENV_NAME=%~1

if exist "%cd%\%VENV_NAME%\Scripts\activate.bat" (
    call "%cd%\%VENV_NAME%\Scripts\activate.bat"
) else (
    echo Virtual environment not found at %cd%\%VENV_NAME%
)
