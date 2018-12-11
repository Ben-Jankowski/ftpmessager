@echo off
title FTP Chat Room
goto 3


:1
cls
ftp -s:get.dat [YourServerIPHere]
cls
echo.
echo [===================Message Bord====================]
echo.
type msg.txt
echo.
echo [===================================================]
echo.
echo.
del msg.txt
echo What do you want to do?
echo.
echo [1] Send a message
echo [2] Reload the message bord
echo [3] Exit
echo.
set /p enter=">"
if %enter%==1 goto 2
if %enter%==2 goto 3
if %enter%==4 exit
goto 1


:3
cls
ftp -s:get.dat [YourServerIPHere]
cls
echo.
echo [===================Message Bord====================]
echo.
type msg.txt
echo.
echo [===================================================]
echo.
echo.
del msg.txt
goto 1


:2
cls
echo  Send a message 
echo.
set /p msg="Message>"
if exist "%msg%" goto upload
:noupload
cls
ftp -s:get.dat [YourSererIPHere]
cls
echo %username%: %msg% >> msg.txt
ftp -s:put.dat [YourServerIPHere]
cls
del msg.txt
cls
goto 1
