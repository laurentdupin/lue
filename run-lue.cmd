@echo off
setlocal
set "SCRIPT_DIR=%~dp0"
set "ROOT_DIR=%SCRIPT_DIR%.."
set "FFMPEG_BIN=%ROOT_DIR%\tools\ffmpeg\ffmpeg-master-latest-win64-gpl\bin"
set "PATH=%FFMPEG_BIN%;%PATH%"
set "PY_EXE=%SCRIPT_DIR%.venv\Scripts\python.exe"
if not exist "%PY_EXE%" (
  echo Python venv not found: %PY_EXE%
  exit /b 1
)
if not exist "%FFMPEG_BIN%\ffmpeg.exe" (
  echo FFmpeg not found: %FFMPEG_BIN%
  exit /b 1
)
"%PY_EXE%" -m lue %*
