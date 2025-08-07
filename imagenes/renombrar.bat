@echo off
setlocal enabledelayedexpansion

cd /d "%~dp0"

set /a count=0

for %%f in (*.jpg *.jpeg *.png *.webp) do (
    set "ext=%%~xf"
    ren "%%f" "item-!count!!ext!"
    set /a count+=1
)

echo Renombrado completo.
pause
