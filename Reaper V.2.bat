@echo off
color 4
 
echo               ...                                ________   __________        _     ________  __________ ________
echo              ;::::;                              `MMMMMMMb. `MMMMMMMMM       dM.    `MMMMMMMb.`MMMMMMMMM `MMMMMMMb.
echo            ;::::; :;                              MM    `Mb  MM      \      ,MMb     MM    `Mb MM      \  MM    `Mb
echo          ;:::::'   :;                             MM     MM  MM             d'YM.    MM     MM MM         MM     MM
echo         ;:::::;     ;.                            MM     MM  MM    ,       ,P `Mb    MM     MM MM    ,    MM     MM
echo        ,:::::'       ;           OOO\             MM    .M9  MMMMMMM       d'  YM.   MM    .M9 MMMMMMM    MM    .M9
echo        ::::::;       ;          OOOOO\            MMMMMMM9'  MM    `      ,P   `Mb   MMMMMMM9' MM    `    MMMMMMM9'
echo        ;:::::;       ;         OOOOOOOO           MM  \M\    MM           d'    YM.  MM        MM         MM  \M\
echo       ,;::::::;     ;'         / OOOOOOO          MM   \M\   MM          ,MMMMMMMMb  MM        MM         MM   \M\
echo     ;:::::::::`. ,,,;.        /  / DOOOOOO        MM    \M\  MM      /   d'      YM. MM        MM      /  MM    \M\
echo   .';:::::::::::::::::;,     /  /     DOOOO      _MM_    \M\_MMMMMMMMM _dM_     _dMM_MM_      _MMMMMMMMM _MM_    \M\_
echo  ,::::::;::::::;;;;::::;,   /  /        DOOO     ____________________________________________________________________
echo ;`::::::`'::::::;;;::::: ,#/  /          DOOO    ____________________________________________________________________
echo :`:::::::`;::::::;;::: ;::#  /            DOOO
echo ::`:::::::`;:::::::: ;::::# /              DOO
echo `:`:::::::`;:::::: ;::::::#/               DOO
echo  :::`:::::::`;; ;:::::::::##                OO
echo ::::`:::::::`;::::::::;:::#                OO
echo `:::::`::::::::::::;'`:;::#                O
echo   `:::::`::::::::;' /  / `:#
echo    ::::::`:::::;'  /  /   `#
set /p IP= IP=
 
:top

PING -n 1 %IP% | FIND "TTL="           
IF ERRORLEVEL 1 (echo %IP% IS OFFLINE)
set /a num=(%Random%%%9)+1
color 4
ping -t 2 0 10 127.0.0.1 >nul
GoTo top