@echo off
chcp 65001 >nul
title scrcpy OTG

set "scrcpy_dir=YOUR_SCRCPY_FOLDER"
cd /d "%scrcpy_dir%"

:menu_res
cls
echo ==========================================
echo          SELECT YOUR RESOLUTION
echo ==========================================
echo.
echo  [1] 1280x720  (HD)
echo  [2] 1920x1080 (FHD)
echo  [3] 2560x1440 (2K)
echo  [4] 3840x2160 (4K)
echo.
echo ==========================================
set "res_choice="
set /p "res_choice=Choice (1-4): "

if "%res_choice%"=="1" set "scr_w=1280" & set "scr_h=720" & goto menu_side
if "%res_choice%"=="2" set "scr_w=1920" & set "scr_h=1080" & goto menu_side
if "%res_choice%"=="3" set "scr_w=2560" & set "scr_h=1440" & goto menu_side
if "%res_choice%"=="4" set "scr_w=3840" & set "scr_h=2160" & goto menu_side
goto menu_res

:menu_side
set /a "right_edge=%scr_w% - 1"
cls
echo ==========================================
echo           SELECT TABLET EDGE
echo ==========================================
echo.
echo  Resolution Set: %scr_w%x%scr_h%
echo.
echo  [1] LEFT Side
echo  [2] RIGHT Side
echo  [3] TOP Side
echo.
echo ==========================================
set "choice="
set /p "choice=Choice (1-3): "

if "%choice%"=="1" goto left
if "%choice%"=="2" goto right
if "%choice%"=="3" goto top
goto menu_side

:left
start "" wscript.exe "scrcpy-noconsole.vbs" --otg --window-title "Android" --window-x 0 --window-y 0 --window-width 1 --window-height %scr_h% --window-borderless --always-on-top --keyboard=aoa
exit

:right
start "" wscript.exe "scrcpy-noconsole.vbs" --otg --window-title "Android" --window-x %right_edge% --window-y 0 --window-width 1 --window-height %scr_h% --window-borderless --always-on-top --keyboard=aoa
exit

:top
start "" wscript.exe "scrcpy-noconsole.vbs" --otg --window-title "Android" --window-x 0 --window-y 0 --window-width %scr_w% --window-height 1 --window-borderless --always-on-top --keyboard=aoa
exit