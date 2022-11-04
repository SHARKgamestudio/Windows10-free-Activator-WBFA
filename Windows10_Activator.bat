:: ||||||||||||||||||||||||| Comienzo del guion ||||||||||||||||||||||||| ::

::  este guion es un platito de spaggethi no le prestes atencion
@Echo off
@Title %~n0

REM  --> Comprobamos si el programa se inicia con derechos de administrador.
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system") ELSE (
      >nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system")

REM --> Si hay un error, el script no tiene los derechos.
if '%errorlevel%' NEQ '0' (
    echo este guion necesita los permision de administratores.
    echo solicitud de derechos... puedes aceptar.
    ping localhost /t /n 2 > nul
    goto UACPrompt
) else ( goto gotAdmin )

REM --> Entonces los solicitamos a través de un archivo .vbs
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"

:: mostramos la ventana ::

:: ||||||||||||||||||||||||| CONFIGURAR LA VENTANA ||||||||||||||||||||||||| ::
title Windows10 Activator WBFA
@Mode 48,15
Batbox /h 0

:: ||||||||||||||||||||||||| MOSTRAR EL MENU PRINCIPAL ||||||||||||||||||||||||| ::
:MainMenu
Call grph_lib  10 4 "Habilitar" 24 4 "Eliminar" 17 8 "  Salir  " # Press
Getinput /m %Press% /h 70

:: Comprobar el botón pulsado 
if %errorlevel%==1 (goto :ActivationMenu)
if %errorlevel%==2 (goto :unidentify)
if %errorlevel%==3 (exit)
goto MainMenu

:: ||||||||||||||||||||||||| FUNCION DE DESAUTENTIFICACION ||||||||||||||||||||||||| ::

:unidentify
cls
cscript %SYSTEMROOT%\System32\slmgr.vbs -upk > nul
echo Windows10 ha desauthentificado
pause
exit)

:: ||||||||||||||||||||||||| MOSTRAR EL MENU D'ACTIVACION ||||||||||||||||||||||||| ::

:ActivationMenu
Call grph_lib  10 4 "Crear.." 24 4 "Utilisar" 17 8 "  Salir  " # Press
Getinput /m %Press% /h 70

:: Comprobar el botón pulsado 
if %errorlevel%==1 (goto :SelectionMenu1)
if %errorlevel%==2 (goto :manual_auth)
if %errorlevel%==3 (exit)
goto ActivationMenu


:: ||||||||||||||||||||||||| MÉTODO DE AUTENTIFICACIÓN MANUAL ||||||||||||||||||||||||| ::

:manual_auth
cls
echo ingresa tù llave : XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
set /p key="Chaxi-Crack > "
echo Espere.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Espere.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Espere.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 ha activado !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENTO DEL MENU D'ACTIVATION 1 ||||||||||||||||||||||||| ::

:SelectionMenu1
cls
echo 1)  Famille / Core
Call grph_lib  12 4 "Proximo" 26 4 "Anterior" 15 8 "  Selecionne  " # Press
Getinput /m %Press% /h 70

:: Comprobar el botón pulsado 
if %errorlevel%==1 (goto :SelectionMenu14)
if %errorlevel%==2 (goto :SelectionMenu2)
if %errorlevel%==3 (goto :method1)
goto SelectionMenu1

:method1
cls
set key=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
echo Espere.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Espere.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Espere.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 ha activado !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENTO DEL MENU D'ACTIVATION 2 ||||||||||||||||||||||||| ::

:SelectionMenu2
cls
echo 2)  Famille / Core (specific country)
Call grph_lib  12 4 "Proximo" 26 4 "Anterior" 15 8 "  Selecionne  " # Press
Getinput /m %Press% /h 70

:: Comprobar el botón pulsado 
if %errorlevel%==1 (goto :SelectionMenu1)
if %errorlevel%==2 (goto :SelectionMenu3)
if %errorlevel%==3 (goto :method2)
goto SelectionMenu2

:method2
cls
set key=PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
echo Espere.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Espere.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Espere.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 ha activado !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENTO DEL MENU D'ACTIVATION 3 ||||||||||||||||||||||||| ::

:SelectionMenu3
cls
echo 3)  Famille / Core (one language)
Call grph_lib  12 4 "Proximo" 26 4 "Anterior" 15 8 "  Selecionne  " # Press
Getinput /m %Press% /h 70

:: Comprobar el botón pulsado 
if %errorlevel%==1 (goto :SelectionMenu2)
if %errorlevel%==2 (goto :SelectionMenu4)
if %errorlevel%==3 (goto :method3)
goto SelectionMenu3

:method3
cls
set key=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
echo Espere.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Espere.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Espere.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 ha activado !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENTO DEL MENU D'ACTIVATION 4 ||||||||||||||||||||||||| ::

:SelectionMenu4
cls
echo 4)  Famille / Core N
Call grph_lib  12 4 "Proximo" 26 4 "Anterior" 15 8 "  Selecionne  " # Press
Getinput /m %Press% /h 70

:: Comprobar el botón pulsado 
if %errorlevel%==1 (goto :SelectionMenu3)
if %errorlevel%==2 (goto :SelectionMenu5)
if %errorlevel%==3 (goto :method4)
goto SelectionMenu4

:method4
cls
set key=3KHY7-WNT83-DGQKR-F7HPR-844BM
echo Espere.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Espere.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Espere.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 ha activado !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENTO DEL MENU D'ACTIVATION 5 ||||||||||||||||||||||||| ::

:SelectionMenu5
cls
echo 5)  Professional
Call grph_lib  12 4 "Proximo" 26 4 "Anterior" 15 8 "  Selecionne  " # Press
Getinput /m %Press% /h 70

:: Comprobar el botón pulsado 
if %errorlevel%==1 (goto :SelectionMenu4)
if %errorlevel%==2 (goto :SelectionMenu6)
if %errorlevel%==3 (goto :method5)
goto SelectionMenu5

:method5
cls
set key=W269N-WFGWX-YVC9B-4J6C9-T83GX
echo Espere.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Espere.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Espere.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 ha activado !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENTO DEL MENU D'ACTIVATION 6 ||||||||||||||||||||||||| ::

:SelectionMenu6
cls
echo 6)  Professional N
Call grph_lib  12 4 "Proximo" 26 4 "Anterior" 15 8 "  Selecionne  " # Press
Getinput /m %Press% /h 70

:: Comprobar el botón pulsado 
if %errorlevel%==1 (goto :SelectionMenu5)
if %errorlevel%==2 (goto :SelectionMenu7)
if %errorlevel%==3 (goto :method6)
goto SelectionMenu6

:method6
cls
set key=MH37W-N47XK-V7XM9-C7227-GCQG9
echo Espere.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Espere.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Espere.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 ha activado !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENTO DEL MENU D'ACTIVATION 7 ||||||||||||||||||||||||| ::

:SelectionMenu7
cls
echo 7)  Business
Call grph_lib  12 4 "Proximo" 26 4 "Anterior" 15 8 "  Selecionne  " # Press
Getinput /m %Press% /h 70

:: Comprobar el botón pulsado 
if %errorlevel%==1 (goto :SelectionMenu6)
if %errorlevel%==2 (goto :SelectionMenu8)
if %errorlevel%==3 (goto :method7)
goto SelectionMenu7

:method7
cls
set key=NPPR9-FWDCX-D2C8J-H872K-2YT43
echo Espere.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Espere.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Espere.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 ha activado !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENTO DEL MENU D'ACTIVATION 8 ||||||||||||||||||||||||| ::

:SelectionMenu8
cls
echo 8)  Business N
Call grph_lib  12 4 "Proximo" 26 4 "Anterior" 15 8 "  Selecionne  " # Press
Getinput /m %Press% /h 70

:: Comprobar el botón pulsado 
if %errorlevel%==1 (goto :SelectionMenu7)
if %errorlevel%==2 (goto :SelectionMenu9)
if %errorlevel%==3 (goto :method8)
goto SelectionMenu8

:method8
cls
set key=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
echo Espere.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Espere.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Espere.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 ha activado !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENTO DEL MENU D'ACTIVATION 9 ||||||||||||||||||||||||| ::

:SelectionMenu9
cls
echo 9)  Education
Call grph_lib  12 4 "Proximo" 26 4 "Anterior" 15 8 "  Selecionne  " # Press
Getinput /m %Press% /h 70

:: Comprobar el botón pulsado 
if %errorlevel%==1 (goto :SelectionMenu8)
if %errorlevel%==2 (goto :SelectionMenu10)
if %errorlevel%==3 (goto :method9)
goto SelectionMenu9

:method9
cls
set key=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
echo Espere.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Espere.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Espere.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 ha activado !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENTO DEL MENU D'ACTIVATION 10 ||||||||||||||||||||||||| ::

:SelectionMenu10
cls
echo 10) Education N
Call grph_lib  12 4 "Proximo" 26 4 "Anterior" 15 8 "  Selecionne  " # Press
Getinput /m %Press% /h 70

:: Comprobar el botón pulsado 
if %errorlevel%==1 (goto :SelectionMenu9)
if %errorlevel%==2 (goto :SelectionMenu11)
if %errorlevel%==3 (goto :method10)
goto SelectionMenu10

:method10
cls
set key=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
echo Espere.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Espere.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Espere.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 ha activado !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENTO DEL MENU D'ACTIVATION 11 ||||||||||||||||||||||||| ::

:SelectionMenu11
cls
echo 11) Business 2015 LTSB
Call grph_lib  12 4 "Proximo" 26 4 "Anterior" 15 8 "  Selecionne  " # Press
Getinput /m %Press% /h 70

:: Comprobar el botón pulsado 
if %errorlevel%==1 (goto :SelectionMenu10)
if %errorlevel%==2 (goto :SelectionMenu12)
if %errorlevel%==3 (goto :method11)
goto SelectionMenu11

:method11
cls
set key=WNMTR-4C88C-JK8YV-HQ7T2-76DF9
echo Espere.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Espere.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Espere.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 ha activado !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENTO DEL MENU D'ACTIVATION 12 ||||||||||||||||||||||||| ::

:SelectionMenu12
cls
echo 12) Business 2015 LTSB N
Call grph_lib  12 4 "Proximo" 26 4 "Anterior" 15 8 "  Selecionne  " # Press
Getinput /m %Press% /h 70

:: Comprobar el botón pulsado 
if %errorlevel%==1 (goto :SelectionMenu11)
if %errorlevel%==2 (goto :SelectionMenu13)
if %errorlevel%==3 (goto :method12)
goto SelectionMenu12

:method12
cls
set key=2F77B-TNFGY-69QQF-B8YKP-D69TJ
echo Espere.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Espere.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Espere.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 ha activado !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENTO DEL MENU D'ACTIVATION 13 ||||||||||||||||||||||||| ::

:SelectionMenu13
cls
echo 13) Business 2016 LTSB
Call grph_lib  12 4 "Proximo" 26 4 "Anterior" 15 8 "  Selecionne  " # Press
Getinput /m %Press% /h 70

:: Comprobar el botón pulsado 
if %errorlevel%==1 (goto :SelectionMenu12)
if %errorlevel%==2 (goto :SelectionMenu14)
if %errorlevel%==3 (goto :method13)
goto SelectionMenu13

:method13
cls
set key=DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ
echo Espere.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Espere.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Espere.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 ha activado !
echo.
pause
exit

:: ||||||||||||||||||||||||| PUNTO 14 DEL MENÚ DE ACTIVACIÓN ||||||||||||||||||||||||| ::

:SelectionMenu14
cls
echo 14) Business 2016 LTSB N
Call grph_lib  12 4 "Proximo" 26 4 "Anterior" 15 8 "  Selecionne  " # Press
Getinput /m %Press% /h 70

:: Comprobar el botón pulsado 
if %errorlevel%==1 (goto :SelectionMenu13)
if %errorlevel%==2 (goto :SelectionMenu1)
if %errorlevel%==3 (goto :method14)
goto SelectionMenu14

:method14
cls
set key=QFFDN-GRT3P-VKWWX-X7T3R-8B639
echo Espere.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Espere.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Espere.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 ha activado !
echo.
pause
exit
:: ||||||||||||||||||||||||| Final del escripto ||||||||||||||||||||||||| ::
