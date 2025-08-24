@echo off
set VENV_NAME=venvy
if not "%~1"=="" set VENV_NAME=%~1

python -m venv "%VENV_NAME%"
copy "%cd%\%VENV_NAME%\Scripts\deactivate.bat" "%cd%\%VENV_NAME%\Scripts\d.venv.bat" 1>nul

echo Virtual environment created in folder: %VENV_NAME%
ab