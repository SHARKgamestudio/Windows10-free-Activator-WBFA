:: ||||||||||||||||||||||||| DEBUT DU SCRIPT ||||||||||||||||||||||||| ::

:: Ce script est un petit plat de spaghetti pas très optimiser...n'y prettez pas trop attention.
@Echo off
@Title %~n0

REM  --> On verifie si le programme est lancer avec les droits d'admin
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system") ELSE (
      >nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system")

REM --> Si il y à une erreur c'est que le script n'a pas les droits
if '%errorlevel%' NEQ '0' (
    echo Ce script à besoins des droits administrateurs pour fonctionner.
    echo Demandes des droits en cours... Merci d'accepter.
    ping localhost /t /n 2 > nul
    goto UACPrompt
) else ( goto gotAdmin )

REM --> Donc on les demande via un fichier .vbs
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

:: on montre la fenetre :

:: ||||||||||||||||||||||||| CONFIGURER LA FENETRE ||||||||||||||||||||||||| ::
title Windows10 Activator
@Mode 48,15
Batbox /h 0

:: ||||||||||||||||||||||||| AFFICHER LE MENU PRINCIPALE ||||||||||||||||||||||||| ::
:MainMenu
Call grph_lib  10 4 "Activer" 24 4 "Enlever" 17 8 "  Sortie  " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto :ActivationMenu)
if %errorlevel%==2 (goto :unidentify)
if %errorlevel%==3 (exit)
goto MainMenu

:: ||||||||||||||||||||||||| FONCTION DE DESAUTHENTIFICATION ||||||||||||||||||||||||| ::

:unidentify
cls
cscript %SYSTEMROOT%\System32\slmgr.vbs -upk > nul
echo Windows10 à été desauthentifier
pause
exit)

:: ||||||||||||||||||||||||| AFFICHER LE MENU D'ACTIVATION ||||||||||||||||||||||||| ::

:ActivationMenu
Call grph_lib  10 4 "Creer.." 24 4 "Utiliser" 17 8 "  Sortie  " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto :SelectionMenu1)
if %errorlevel%==2 (goto :manual_auth)
if %errorlevel%==3 (exit)
goto ActivationMenu


:: ||||||||||||||||||||||||| METHODE D'AUTHENTIFICATION MANUELLE ||||||||||||||||||||||||| ::

:manual_auth
cls
echo Saisir votre clef : XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
set /p key="Chaxi-Crack > "
echo Patientez.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Patientez.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Patientez.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 à été activer !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENT DU MENU D'ACTIVATION 1 ||||||||||||||||||||||||| ::

:SelectionMenu1
cls
echo 1)  Famille / Core
Call grph_lib  12 4 "Suivant" 26 4 "Precedant" 15 8 "  Selectionner  " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto :SelectionMenu14)
if %errorlevel%==2 (goto :SelectionMenu2)
if %errorlevel%==3 (goto :method1)
goto SelectionMenu1

:method1
cls
set key=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
echo Patientez.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Patientez.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Patientez.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 à été activer !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENT DU MENU D'ACTIVATION 2 ||||||||||||||||||||||||| ::

:SelectionMenu2
cls
echo 2)  Famille / Core (specific country)
Call grph_lib  12 4 "Suivant" 26 4 "Precedant" 15 8 "  Selectionner  " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto :SelectionMenu1)
if %errorlevel%==2 (goto :SelectionMenu3)
if %errorlevel%==3 (goto :method2)
goto SelectionMenu2

:method2
cls
set key=PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
echo Patientez.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Patientez.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Patientez.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 à été activer !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENT DU MENU D'ACTIVATION 3 ||||||||||||||||||||||||| ::

:SelectionMenu3
cls
echo 3)  Famille / Core (one language)
Call grph_lib  12 4 "Suivant" 26 4 "Precedant" 15 8 "  Selectionner  " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto :SelectionMenu2)
if %errorlevel%==2 (goto :SelectionMenu4)
if %errorlevel%==3 (goto :method3)
goto SelectionMenu3

:method3
cls
set key=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
echo Patientez.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Patientez.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Patientez.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 à été activer !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENT DU MENU D'ACTIVATION 4 ||||||||||||||||||||||||| ::

:SelectionMenu4
cls
echo 4)  Famille / Core N
Call grph_lib  12 4 "Suivant" 26 4 "Precedant" 15 8 "  Selectionner  " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto :SelectionMenu3)
if %errorlevel%==2 (goto :SelectionMenu5)
if %errorlevel%==3 (goto :method4)
goto SelectionMenu4

:method4
cls
set key=3KHY7-WNT83-DGQKR-F7HPR-844BM
echo Patientez.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Patientez.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Patientez.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 à été activer !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENT DU MENU D'ACTIVATION 5 ||||||||||||||||||||||||| ::

:SelectionMenu5
cls
echo 5)  Professional
Call grph_lib  12 4 "Suivant" 26 4 "Precedant" 15 8 "  Selectionner  " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto :SelectionMenu4)
if %errorlevel%==2 (goto :SelectionMenu6)
if %errorlevel%==3 (goto :method5)
goto SelectionMenu5

:method5
cls
set key=W269N-WFGWX-YVC9B-4J6C9-T83GX
echo Patientez.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Patientez.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Patientez.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 à été activer !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENT DU MENU D'ACTIVATION 6 ||||||||||||||||||||||||| ::

:SelectionMenu6
cls
echo 6)  Professional N
Call grph_lib  12 4 "Suivant" 26 4 "Precedant" 15 8 "  Selectionner  " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto :SelectionMenu5)
if %errorlevel%==2 (goto :SelectionMenu7)
if %errorlevel%==3 (goto :method6)
goto SelectionMenu6

:method6
cls
set key=MH37W-N47XK-V7XM9-C7227-GCQG9
echo Patientez.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Patientez.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Patientez.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 à été activer !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENT DU MENU D'ACTIVATION 7 ||||||||||||||||||||||||| ::

:SelectionMenu7
cls
echo 7)  Business
Call grph_lib  12 4 "Suivant" 26 4 "Precedant" 15 8 "  Selectionner  " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto :SelectionMenu6)
if %errorlevel%==2 (goto :SelectionMenu8)
if %errorlevel%==3 (goto :method7)
goto SelectionMenu7

:method7
cls
set key=NPPR9-FWDCX-D2C8J-H872K-2YT43
echo Patientez.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Patientez.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Patientez.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 à été activer !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENT DU MENU D'ACTIVATION 8 ||||||||||||||||||||||||| ::

:SelectionMenu8
cls
echo 8)  Business N
Call grph_lib  12 4 "Suivant" 26 4 "Precedant" 15 8 "  Selectionner  " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto :SelectionMenu7)
if %errorlevel%==2 (goto :SelectionMenu9)
if %errorlevel%==3 (goto :method8)
goto SelectionMenu8

:method8
cls
set key=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
echo Patientez.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Patientez.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Patientez.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 à été activer !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENT DU MENU D'ACTIVATION 9 ||||||||||||||||||||||||| ::

:SelectionMenu9
cls
echo 9)  Education
Call grph_lib  12 4 "Suivant" 26 4 "Precedant" 15 8 "  Selectionner  " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto :SelectionMenu8)
if %errorlevel%==2 (goto :SelectionMenu10)
if %errorlevel%==3 (goto :method9)
goto SelectionMenu9

:method9
cls
set key=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
echo Patientez.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Patientez.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Patientez.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 à été activer !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENT DU MENU D'ACTIVATION 10 ||||||||||||||||||||||||| ::

:SelectionMenu10
cls
echo 10) Education N
Call grph_lib  12 4 "Suivant" 26 4 "Precedant" 15 8 "  Selectionner  " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto :SelectionMenu9)
if %errorlevel%==2 (goto :SelectionMenu11)
if %errorlevel%==3 (goto :method10)
goto SelectionMenu10

:method10
cls
set key=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
echo Patientez.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Patientez.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Patientez.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 à été activer !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENT DU MENU D'ACTIVATION 11 ||||||||||||||||||||||||| ::

:SelectionMenu11
cls
echo 11) Business 2015 LTSB
Call grph_lib  12 4 "Suivant" 26 4 "Precedant" 15 8 "  Selectionner  " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto :SelectionMenu10)
if %errorlevel%==2 (goto :SelectionMenu12)
if %errorlevel%==3 (goto :method11)
goto SelectionMenu11

:method11
cls
set key=WNMTR-4C88C-JK8YV-HQ7T2-76DF9
echo Patientez.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Patientez.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Patientez.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 à été activer !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENT DU MENU D'ACTIVATION 12 ||||||||||||||||||||||||| ::

:SelectionMenu12
cls
echo 12) Business 2015 LTSB N
Call grph_lib  12 4 "Suivant" 26 4 "Precedant" 15 8 "  Selectionner  " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto :SelectionMenu11)
if %errorlevel%==2 (goto :SelectionMenu13)
if %errorlevel%==3 (goto :method12)
goto SelectionMenu12

:method12
cls
set key=2F77B-TNFGY-69QQF-B8YKP-D69TJ
echo Patientez.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Patientez.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Patientez.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 à été activer !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENT DU MENU D'ACTIVATION 13 ||||||||||||||||||||||||| ::

:SelectionMenu13
cls
echo 13) Business 2016 LTSB
Call grph_lib  12 4 "Suivant" 26 4 "Precedant" 15 8 "  Selectionner  " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto :SelectionMenu12)
if %errorlevel%==2 (goto :SelectionMenu14)
if %errorlevel%==3 (goto :method13)
goto SelectionMenu13

:method13
cls
set key=DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ
echo Patientez.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Patientez.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Patientez.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 à été activer !
echo.
pause
exit

:: ||||||||||||||||||||||||| ELEMENT DU MENU D'ACTIVATION 14 ||||||||||||||||||||||||| ::

:SelectionMenu14
cls
echo 14) Business 2016 LTSB N
Call grph_lib  12 4 "Suivant" 26 4 "Precedant" 15 8 "  Selectionner  " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (goto :SelectionMenu13)
if %errorlevel%==2 (goto :SelectionMenu1)
if %errorlevel%==3 (goto :method14)
goto SelectionMenu14

:method14
cls
set key=QFFDN-GRT3P-VKWWX-X7T3R-8B639
echo Patientez.... [1/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ipk %key% > nul
echo Patientez.... [2/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /skms kms.lotro.cc > nul
echo Patientez.... [3/3]
cscript %SYSTEMROOT%\System32\slmgr.vbs /ato > nul
echo.
echo Windows10 à été activer !
echo.
pause
exit
:: ||||||||||||||||||||||||| FIN DU SCRIPT ||||||||||||||||||||||||| ::