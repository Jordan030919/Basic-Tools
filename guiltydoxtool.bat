@echo off
mode con lines=49 cols=49
chcp 65001 >nul
title GUILTY Dox Tool
echo [+]-----------------------------[+]
echo  I    Welcome to GUILTY Dox Tool I
echo  I          Missing Info?        I
echo  I      Leave It Blank...        I
echo [+].............................[+]
echo.
echo.
echo.
echo.
Set /p First name=First Name: 
Set /p Last name=Last Name: 
Set /p Address=Address: 
Set /p City=City: 
Set /p State=State: 
Set /p Phone number=Phone Number: 
Set /p Email Address=Email Address: 
Set /p IP ADDRESS=IP ADDRESS: 
Set /p XUID=XUID: 
Set /p School=School: 
Set /p Job=Job: 
Set /p Mom=Mom name: 
Set /p Mom Address=Mom's Address: 
Set /p Mom Number=Mom's Number: 
Set /p Dad=Dad name: 
Set /p Dad Address=Dad's Address: 
Set /p Dad Number=Dad's Number: 
Set /p Reason=Reason: 
echo .Dox Will Be Saved To Desktop.....
rem saved in D:\temp\tool.bat
@echo off

echo   ▄████  █    ██  ██▓ ██▓  ▄▄▄█████▓▓██   ██▓    >> %First name%_dox.txt
echo  ██▒ ▀█▒ ██  ▓██▒▓██▒▓██▒  ▓  ██▒ ▓▒ ▒██  ██▒    >> %First name%_dox.txt
echo ▒██░▄▄▄░▓██  ▒██░▒██▒▒██░  ▒ ▓██░ ▒░  ▒██ ██░    >> %First name%_dox.txt
echo ░▓█  ██▓▓▓█  ░██░░██░▒██░  ░ ▓██▓ ░   ░ ▐██▓░    >> %First name%_dox.txt
echo ░▒▓███▀▒▒▒█████▓ ░██░░██████▒▒██▒ ░   ░ ██▒▓░    >> %First name%_dox.txt
echo  ░▒   ▒ ░▒▓▒ ▒ ▒ ░▓  ░ ▒░▓  ░▒ ░░      ██▒▒▒     >> %First name%_dox.txt
echo   ░   ░ ░░▒░ ░ ░  ▒ ░░ ░ ▒  ░  ░     ▓██ ░▒░     >> %First name%_dox.txt
echo ░ ░   ░  ░░░ ░ ░  ▒ ░  ░ ░   ░       ▒ ▒ ░░      >> %First name%_dox.txt 
echo       ░    ░      ░      ░  ░        ░ ░         >> %First name%_dox.txt    
echo                                      ░ ░         >> %First name%_dox.txt    
echo                                                                 >> %First name%_dox.txt
echo ▓█████▄  ▒█████  ▒██   ██▒   ▄▄▄█████▓ ▒█████   ▒█████   ██▓    >> %First name%_dox.txt    
echo ▒██▀ ██▌▒██▒  ██▒▒▒ █ █ ▒░   ▓  ██▒ ▓▒▒██▒  ██▒▒██▒  ██▒▓██▒    >> %First name%_dox.txt 
echo ░██   █▌▒██░  ██▒░░  █   ░   ▒ ▓██░ ▒░▒██░  ██▒▒██░  ██▒▒██░    >> %First name%_dox.txt 
echo ░▓█▄   ▌▒██   ██░ ░ █ █ ▒    ░ ▓██▓ ░ ▒██   ██░▒██   ██░▒██░    >> %First name%_dox.txt 
echo ░▒████▓ ░ ████▓▒░▒██▒ ▒██▒     ▒██▒ ░ ░ ████▓▒░░ ████▓▒░░██████▒>> %First name%_dox.txt 
echo  ▒▒▓  ▒ ░ ▒░▒░▒░ ▒▒ ░ ░▓ ░     ▒ ░░   ░ ▒░▒░▒░ ░ ▒░▒░▒░ ░ ▒░▓  ░>> %First name%_dox.txt 
echo  ░ ▒  ▒   ░ ▒ ▒░ ░░   ░▒ ░       ░      ░ ▒ ▒░   ░ ▒ ▒░ ░ ░ ▒  ░>> %First name%_dox.txt 
echo  ░ ░  ░ ░ ░ ░ ▒   ░    ░       ░      ░ ░ ░ ▒  ░ ░ ░ ▒    ░ ░   >> %First name%_dox.txt 
echo    ░        ░ ░   ░    ░                  ░ ░      ░ ░      ░  ░>> %First name%_dox.txt 
echo  ░                                                               
echo [+]---------------------------------------[+]>> %First name%_dox.txt  
echo  I                                         I>> %First name%_dox.txt
echo [+]---------------------------------------[+]>> %First name%_dox.txt  
echo ============================================>> %First name%_dox.txt  
echo First Name: %First name%>> %First name%_dox.txt
echo ============================================>> %First name%_dox.txt  
echo Last Name:  %Last Name%>> %First name%_dox.txt
echo ============================================>> %First name%_dox.txt
echo IP ADDRESS: %IP ADDRESS%>> %First name%_dox.txt
echo ============================================>> %First name%_dox.txt
echo Reason: %Reason%>> %First name%_dox.txt
echo ============================================>> %First name%_dox.txt
echo Address: %Address%First name%_dox.txt
echo ============================================>> %First name%_dox.txt
echo Xuid:    %XUID%>> %First name%_dox.txt
echo ============================================>> %First name%_dox.txt
echo City:    %City%>> %First name%_dox.txt
echo ============================================>> %First name%_dox.txt
echo State:   %State%>> %First name%_dox.txt
echo ============================================>> %First name%_dox.txt
echo Phone Number: %Phone Number%>> %First name%_dox.txt
echo ============================================>> %First name%_dox.txt
echo Email Address: %Email Address%>> %First name%_dox.txt
echo ============================================>> %First name%_dox.txt
echo School: %School%>> %First name%_dox.txt
echo ============================================>> %First name%_dox.txt
echo Job: %Job%>> %First name%_dox.txt
echo ============================================>> %First name%_dox.txt
echo .>> %First name%_dox.txt
echo .>> %First name%_dox.txt
echo .>> %First name%_dox.txt
echo .>> %First name%_dox.txt
echo ============================================>> %First name%_dox.txt
echo Mom's Name: %Mom%>> %First name%_dox.txt
echo ============================================>> %First name%_dox.txt
echo Mom's Address: %Moms Address%>> %First name%_dox.txt
echo ============================================>> %First name%_dox.txt
echo Mom's Number: %Mom Number%>> %First name%_dox.txt
echo ============================================>> %First name%_dox.txt
echo .>> %First name%_dox.txt
echo .>> %First name%_dox.txt
echo .>> %First name%_dox.txt
echo .>> %First name%_dox.txt
echo ============================================>> %First name%_dox.txt
echo Dad's Name: %Dad%>> %First name%_dox.txt
echo ============================================>> %First name%_dox.txt
echo Dad's Address: %Dad Address%>> %First name%_dox.txt
echo ============================================>> %First name%_dox.txt
echo Dad's Number: %Dad Number%>> %First name%_dox.txt
echo ============================================>> %First name%_dox.txt


