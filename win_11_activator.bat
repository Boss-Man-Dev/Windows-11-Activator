@ECHO off
cls
cd "C:\Windows\System32"


:start
ECHO WARNING: USE AT YOUR OWN RISK
ECHO I AM NOT RESPONSIBLE FOR ANY DAMAGES
set /p c=Would you like to Continue [Y/N]?
CLS
if /I "%c%" NEQ "Y" exit

ECHO.
ECHO 1. Home	
ECHO 2. Home N	
ECHO 3. Home Home Single Language	
ECHO 4. Home Country Specific	
ECHO 5. Pro	
ECHO 6. Pro N	
ECHO 7. Pro for Workstations	
ECHO 8. Pro for Workstations N	
ECHO 9. Pro Education	
ECHO 10. Pro Education N	
ECHO 11. Education	
ECHO 12. Education N	
ECHO 13. Enterprise
ECHO 14. Enterprise N	
ECHO 15. Enterprise G	
ECHO 16. Enterprise G N	
ECHO 17. Enterprise LTSC 2019	
ECHO 18. Enterprise N LTSC 2019      
ECHO 19. End

set choice=
set /p choice=Select Your Operating System to Continue.

:loop

set "productKey="

if %choice%==1 set productKey=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
if %choice%==2 set productKey=3KHY7-WNT83-DGQKR-F7HPR-844BM 
if %choice%==3 set productKey=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
if %choice%==4 set productKey=PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
if %choice%==5 set productKey=W269N-WFGWX-YVC9B-4J6C9-T83GX
if %choice%==6 set productKey=MH37W-N47XK-V7XM9-C7227-GCQG9
if %choice%==7 set productKey=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
if %choice%==8 set productKey=9FNHH-K3HBT-3W4TD-6383H-6XYWF
if %choice%==9 set productKey=6TP4R-GNPTD-KYYHQ-7B7DP-J447Y
if %choice%==10 set productKey=YVWGF-BXNMC-HTQYQ-CPQ99-66QFC
if %choice%==11 set productKey=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
if %choice%==12 set productKey=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
if %choice%==13 set productKey=NPPR9-FWDCX-D2C8J-H872K-2YT43
if %choice%==14 set productKey=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
if %choice%==15 set productKey=YYVX9-NTFWV-6MDM3-9PT4T-4M68B
if %choice%==16 set productKey=44RPN-FTY23-9VTTB-MP9BX-T84FV
if %choice%==17 set productKey=M7XTQ-FN8P6-TTKYV-9D4CC-J462D
if %choice%==18 set productKey=92NFX-8DJQP-P6BBQ-THF9C-7CG2H
if %choice%==19 goto end

if "%productKey%"=="" (
    echo "%choice%" is not valid, try again
    goto start
)

rem Now that the productKey variable has been set, 
rem we can proceed to the next step of the process
rem Activating Windows

cscript slmgr.vbs /ipk %productKey%
cscript slmgr.vbs /skms kms8.msguides.com
cscript slmgr.vbs /ato

:end
ECHO THANKS FOR USING A 
ECHO Boss_Man PRODUCT
ECHO.
set /P c=Would You Like to quit[Y/N]?
CLS
if /I "%c%" EQU "Y" goto :Exit
if /I "%c%" EQU "N" goto :start