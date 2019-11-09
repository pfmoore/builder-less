@echo off
setlocal

REM Requirements
REM ============
REM
REM The build must be run with **32-bit** Visual Studio tools active.
REM The 64-bit versions do not work - they produce an executable that
REM does not work (exits immediately without displaying anything).
REM
REM In addition, curl and zip need to be available.
REM
REM The output executable is created in a zipfile in the current directory.

REM Change this to build a different version of less
SET LESS_VERSION=551

curl http://www.greenwoodsoftware.com/less/less-%LESS_VERSION%.zip -o src.zip
unzip src.zip
cd less-%LESS_VERSION%
nmake /f Makefile.wnm
set TARGET=..\less-%LESS_VERSION%.zip
zip -9 %TARGET% *.exe

REM Display the results
echo.
echo.
echo Generated executable archive:
echo.
dir %TARGET%
unzip -l %TARGET%

endlocal
