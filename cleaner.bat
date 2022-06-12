cls
@echo off
set b=0
set apploc=%cd%
set appname=mootrix-cleaner
set appvers=1.0.0
set appstat=Alpha
set dev=mootrix@gmail.com
set desc=A maintenance tool that can automatically or manually clean up your Windows machine.
set divider================================================================
set uicolor=a
set infouicolor=b
set erruicolor=c
color %infouicolor%
echo Administrative permissions required. Detecting permissions.
ping localhost -n 3 >NUL
cls
echo Administrative permissions required. Detecting permissions..
ping localhost -n 3 >NUL
cls
echo Administrative permissions required. Detecting permissions...
ping localhost -n 3 >NUL
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Administrator privileges found!
    echo Starting the program...
    ping localhost -n 2 >NUL
    goto mainMenu
) else (
    cls
    color %erruicolor%
    echo # %divider%
    echo # %appname% PC Cleaner %appvers% - %appstat%
    echo # by %dev%
    echo # %divider%
    echo #
    echo # ERROR * ERROR * ERROR * ERROR * ERROR * ERROR
    echo #
    echo # Current user permissions to execute this .bat file are inadequate.
    echo # This .bat file must be run with administrative privileges.
    echo # Close this program and run it as administrator.
    echo # Contact the developer to assist you...
    echo #
    echo # ERROR * ERROR * ERROR * ERROR * ERROR * ERROR
    echo #
    pause
    exit
)

:mainMenu
cls
title %appname% %appvers% - %appstat% [Main Menu]
echo # %divider%
echo # .88b  d88.  .d88b.   .d88b.  d888888b d8888b. d888888b db    db 
echo # 88'YbdP`88 .8P  Y8. .8P  Y8. `~~88~~' 88  `8D   `88'   `8b  d8' 
echo # 88  88  88 88    88 88    88    88    88oobY'    88     `8bd8'  
echo # 88  88  88 88    88 88    88    88    88`8b      88     .dPYb.  
echo # 88  88  88 `8b  d8' `8b  d8'    88    88 `88.   .88.   .8P  Y8. 
echo # YP  YP  YP  `Y88P'   `Y88P'     YP    88   YD Y888888P YP    YP 
echo # %divider%
echo #   .o88b. db      d88888b  .d8b.  d8b   db d88888b d8888b. 
echo #  d8P  Y8 88      88'     d8' `8b 888o  88 88'     88  `8D 
echo #  8P      88      88ooooo 88ooo88 88V8o 88 88ooooo 88oobY' 
echo #  8b      88      88~~~~~ 88~~~88 88 V8o88 88~~~~~ 88`8b   
echo #  Y8b  d8 88booo. 88.     88   88 88  V888 88.     88 `88. 
echo #   `Y88P' Y88888P Y88888P YP   YP VP   V8P Y88888P 88   YD 
echo # %divider%
echo # Version %appvers% - %appstat%
echo # by %dev%
echo # %divider%
color %infouicolor%
echo #
echo # Please choose the cleaning method!
echo #
echo # Clean computer.............. [1] (default)
echo # Extra Tools................. [2]
echo # Exit ....................... [3]
echo #
set/p "mainMenu=# %cliN%> " || set mainMenu=1
if %mainMenu%==1 goto autoInit
if %mainMenu%==2 goto extraInit
if %mainMenu%==3 goto exitProgram
pause>null
goto errMes01

:autoInit
cls
title %appname% %appvers% - %appstat% [Autoclean]
echo # %divider%
echo # .88b  d88.  .d88b.   .d88b.  d888888b d8888b. d888888b db    db 
echo # 88'YbdP`88 .8P  Y8. .8P  Y8. `~~88~~' 88  `8D   `88'   `8b  d8' 
echo # 88  88  88 88    88 88    88    88    88oobY'    88     `8bd8'  
echo # 88  88  88 88    88 88    88    88    88`8b      88     .dPYb.  
echo # 88  88  88 `8b  d8' `8b  d8'    88    88 `88.   .88.   .8P  Y8. 
echo # YP  YP  YP  `Y88P'   `Y88P'     YP    88   YD Y888888P YP    YP 
echo # %divider%
echo #   .o88b. db      d88888b  .d8b.  d8b   db d88888b d8888b. 
echo #  d8P  Y8 88      88'     d8' `8b 888o  88 88'     88  `8D 
echo #  8P      88      88ooooo 88ooo88 88V8o 88 88ooooo 88oobY' 
echo #  8b      88      88~~~~~ 88~~~88 88 V8o88 88~~~~~ 88`8b   
echo #  Y8b  d8 88booo. 88.     88   88 88  V888 88.     88 `88. 
echo #   `Y88P' Y88888P Y88888P YP   YP VP   V8P Y88888P 88   YD 
echo # %divider%
echo # Version %appvers% - %appstat%
echo # by %dev%
echo # %divider%
color %uicolor%
echo #
echo # Autoclean Running...
ping localhost -n 3 >NUL
goto aChkDsk

:extraInit
cls
title %appname% %appvers% - %appstat% [Extra Menu]
echo # %divider%
echo # .88b  d88.  .d88b.   .d88b.  d888888b d8888b. d888888b db    db 
echo # 88'YbdP`88 .8P  Y8. .8P  Y8. `~~88~~' 88  `8D   `88'   `8b  d8' 
echo # 88  88  88 88    88 88    88    88    88oobY'    88     `8bd8'  
echo # 88  88  88 88    88 88    88    88    88`8b      88     .dPYb.  
echo # 88  88  88 `8b  d8' `8b  d8'    88    88 `88.   .88.   .8P  Y8. 
echo # YP  YP  YP  `Y88P'   `Y88P'     YP    88   YD Y888888P YP    YP 
echo # %divider%
echo #   .o88b. db      d88888b  .d8b.  d8b   db d88888b d8888b. 
echo #  d8P  Y8 88      88'     d8' `8b 888o  88 88'     88  `8D 
echo #  8P      88      88ooooo 88ooo88 88V8o 88 88ooooo 88oobY' 
echo #  8b      88      88~~~~~ 88~~~88 88 V8o88 88~~~~~ 88`8b   
echo #  Y8b  d8 88booo. 88.     88   88 88  V888 88.     88 `88. 
echo #   `Y88P' Y88888P Y88888P YP   YP VP   V8P Y88888P 88   YD 
echo # %divider%
echo # Version %appvers% - %appstat%
echo # by %dev%
echo # %divider%
color %uicolor%
echo #
echo # Please choose an extra option!
echo #
echo # Enable GodMode Folder....... [1]
echo # Desktop Cleaner............. [2]
echo # ............................ [3]
echo # Main Menu................... [4]
echo #
set/p "extraMenu=# %cliN%> " || set extraMenu=1
if %extraMenu%==1 goto godmodeON
if %extraMenu%==2 goto deskclean
if %extraMenu%==3 goto extraInit
if %extraMenu%==4 goto mainMenu
pause>null
goto errMes01

:godmodeON
cls
title %appname% %appvers% - %appstat% [GodMode Windows 10]
echo # %divider%
echo # .88b  d88.  .d88b.   .d88b.  d888888b d8888b. d888888b db    db 
echo # 88'YbdP`88 .8P  Y8. .8P  Y8. `~~88~~' 88  `8D   `88'   `8b  d8' 
echo # 88  88  88 88    88 88    88    88    88oobY'    88     `8bd8'  
echo # 88  88  88 88    88 88    88    88    88`8b      88     .dPYb.  
echo # 88  88  88 `8b  d8' `8b  d8'    88    88 `88.   .88.   .8P  Y8. 
echo # YP  YP  YP  `Y88P'   `Y88P'     YP    88   YD Y888888P YP    YP 
echo # %divider%
echo #   .o88b. db      d88888b  .d8b.  d8b   db d88888b d8888b. 
echo #  d8P  Y8 88      88'     d8' `8b 888o  88 88'     88  `8D 
echo #  8P      88      88ooooo 88ooo88 88V8o 88 88ooooo 88oobY' 
echo #  8b      88      88~~~~~ 88~~~88 88 V8o88 88~~~~~ 88`8b   
echo #  Y8b  d8 88booo. 88.     88   88 88  V888 88.     88 `88. 
echo #   `Y88P' Y88888P Y88888P YP   YP VP   V8P Y88888P 88   YD 
echo # %divider%
echo # Version %appvers% - %appstat%
echo # by %dev%
echo # %divider%
color %uicolor%
echo #
ping localhost -n 2 >NUL
cd %SystemDrive%\Users\%username%\Desktop
ping localhost -n 1 >NUL
mkdir "GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}"
ping localhost -n 1 >NUL
echo # Godmode folder created!
echo # Checkout that fancy new icon on your desktop!
ping localhost -n 10 >NUL
goto mainMenu

:deskclean
cls
title %appname% %appvers% - %appstat% [Desktop Cleaner]
echo # %divider%
echo # .88b  d88.  .d88b.   .d88b.  d888888b d8888b. d888888b db    db 
echo # 88'YbdP`88 .8P  Y8. .8P  Y8. `~~88~~' 88  `8D   `88'   `8b  d8' 
echo # 88  88  88 88    88 88    88    88    88oobY'    88     `8bd8'  
echo # 88  88  88 88    88 88    88    88    88`8b      88     .dPYb.  
echo # 88  88  88 `8b  d8' `8b  d8'    88    88 `88.   .88.   .8P  Y8. 
echo # YP  YP  YP  `Y88P'   `Y88P'     YP    88   YD Y888888P YP    YP 
echo # %divider%
echo #   .o88b. db      d88888b  .d8b.  d8b   db d88888b d8888b. 
echo #  d8P  Y8 88      88'     d8' `8b 888o  88 88'     88  `8D 
echo #  8P      88      88ooooo 88ooo88 88V8o 88 88ooooo 88oobY' 
echo #  8b      88      88~~~~~ 88~~~88 88 V8o88 88~~~~~ 88`8b   
echo #  Y8b  d8 88booo. 88.     88   88 88  V888 88.     88 `88. 
echo #   `Y88P' Y88888P Y88888P YP   YP VP   V8P Y88888P 88   YD 
echo # %divider%
echo # Version %appvers% - %appstat%
echo # by %dev%
echo # %divider%
color %uicolor%
echo #
ping localhost -n 2 >NUL
set deskdir=%SystemDrive%\Users\%username%\Desktop
set pubdir=%SystemDrive%\Users\Public\Desktop
set viddir=%SystemDrive%\Users\%username%\Videos
set musdir=%SystemDrive%\Users\%username%\Music
set picdir=%SystemDrive%\Users\%username%\Pictures
set downdir=%SystemDrive%\Users\%username%\Downloads
echo Please set the name of your *Organized* folder
set/p "deskfolder=# %cliN%> "

set shortcutfolder=Shortcuts
set wordfilefolder=Word
set codingfilefolder=Coding
set excelfilefolder=Excel
set textfilefolder=Textfiles
set pdffilefolder=PDF
set databasefilefolder=Database
set executablefilefolder=Executables
set presentationfilefolder=Presentations
set systemfilefolder=System
set internetfilefolder=Internet
echo.
cls

Set ext1=lnk
Set ext2=doc
Set ext3=docx
Set ext4=py
Set ext5=html
Set ext6=url
Set ext7=xls
Set ext8=xlsm
Set ext9=xlsx
Set ext10=txt
Set ext11=rtf
Set ext12=pdf
Set ext13=3g2
Set ext14=3gp
Set ext15=avi
Set ext16=flv
Set ext17=h264
Set ext18=m4v
Set ext19=mkv
Set ext20=mov
Set ext21=mp4
Set ext22=mpg
Set ext23=mpeg
Set ext24=rm
Set ext25=swf
Set ext26=vob
Set ext27=wmv
Set ext28=bmp
Set ext29=gif
Set ext30=jpg
Set ext31=jpeg
Set ext32=png
Set ext33=psd
Set ext34=svg
Set ext35=tif
Set ext36=7z
Set ext37=rar
Set ext38=zip
Set ext39=bin
Set ext40=img
Set ext41=iso
Set ext42=csv
Set ext43=dat
Set ext44=db
Set ext45=log
Set ext46=sav
Set ext47=sql
Set ext48=xml
Set ext49=json
Set ext50=mdb
Set ext51=apk
Set ext52=bat
Set ext53=com
Set ext54=exe
Set ext55=jar
Set ext56=pps
Set ext57=ppt
Set ext58=pptx
Set ext59=bak
Set ext60=cab
Set ext61=cfg
Set ext62=dll
Set ext63=ico
Set ext64=ini
Set ext65=sys
Set ext66=tmp
Set ext67=js
Set ext68=asp
Set ext69=cgi
Set ext70=css
Set ext71=htm
Set ext72=xhtml
Set ext73=jsp
Set ext74=php
Set ext75=midi
Set ext76=mid
Set ext77=mp3
Set ext78=ogg
Set ext79=wav
Set ext80=wma
Set ext81=m3u
Set ext82=msi
Set ext83=lua
Set ext84=vbs
Set ext85=ahk
Set ext86=pmc
Set ext87=webp

if not exist %deskdir%\%shortcutfolder% mkdir %deskdir%\%shortcutfolder%
echo f | xcopy /f /y %deskdir%\*.%ext1% %deskdir%\%shortcutfolder%
xcopy /q /y %pubdir%\*.%ext1% %deskdir%\%shortcutfolder%
del %deskdir%\*.%ext1%
del %pubdir%\*.%ext1%

if not exist %deskdir%\%deskfolder%\%wordfilefolder% mkdir %deskdir%\%deskfolder%\%wordfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext2% %deskdir%\%deskfolder%\%wordfilefolder%
xcopy /q /y %pubdir%\*.%ext2% %deskdir%\%deskfolder%\%wordfilefolder%
del %deskdir%\*.%ext2%
del %pubdir%\*.%ext2%

if not exist %deskdir%\%deskfolder%\%wordfilefolder% mkdir %deskdir%\%deskfolder%\%wordfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext3% %deskdir%\%deskfolder%\%wordfilefolder%
xcopy /q /y %pubdir%\*.%ext3% %deskdir%\%deskfolder%\%wordfilefolder%
del %deskdir%\*.%ext3%
del %pubdir%\*.%ext3%

if not exist %deskdir%\%deskfolder%\%codingfilefolder% mkdir %deskdir%\%deskfolder%\%codingfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext4% %deskdir%\%deskfolder%\%codingfilefolder%
xcopy /q /y %pubdir%\*.%ext4% %deskdir%\%deskfolder%\%codingfilefolder%
del %deskdir%\*.%ext4%
del %pubdir%\*.%ext4%

if not exist %deskdir%\%deskfolder%\%codingfilefolder% mkdir %deskdir%\%deskfolder%\%codingfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext5% %deskdir%\%deskfolder%\%codingfilefolder%
xcopy /q /y %pubdir%\*.%ext5% %deskdir%\%deskfolder%\%codingfilefolder%
del %deskdir%\*.%ext5%
del %pubdir%\*.%ext5%

if not exist %deskdir%\%deskfolder%\%codingfilefolder% mkdir %deskdir%\%deskfolder%\%codingfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext6% %deskdir%\%deskfolder%\%codingfilefolder%
xcopy /q /y %pubdir%\*.%ext6% %deskdir%\%deskfolder%\%codingfilefolder%
del %deskdir%\*.%ext6%
del %pubdir%\*.%ext6%

if not exist %deskdir%\%deskfolder%\%excelfilefolder% mkdir %deskdir%\%deskfolder%\%excelfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext7% %deskdir%\%deskfolder%\%excelfilefolder%
xcopy /q /y %pubdir%\*.%ext7% %deskdir%\%deskfolder%\%excelfilefolder%
del %deskdir%\*.%ext7%
del %pubdir%\*.%ext7%

if not exist %deskdir%\%deskfolder%\%excelfilefolder% mkdir %deskdir%\%deskfolder%\%excelfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext8% %deskdir%\%deskfolder%\%excelfilefolder%
xcopy /q /y %pubdir%\*.%ext8% %deskdir%\%deskfolder%\%excelfilefolder%
del %deskdir%\*.%ext8%
del %pubdir%\*.%ext8%

if not exist %deskdir%\%deskfolder%\%excelfilefolder% mkdir %deskdir%\%deskfolder%\%excelfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext9% %deskdir%\%deskfolder%\%excelfilefolder%
xcopy /q /y %pubdir%\*.%ext9% %deskdir%\%deskfolder%\%excelfilefolder%
del %deskdir%\*.%ext9%
del %pubdir%\*.%ext9%

if not exist %deskdir%\%deskfolder%\%textfilefolder% mkdir %deskdir%\%deskfolder%\%textfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext10% %deskdir%\%deskfolder%\%textfilefolder%
xcopy /q /y %pubdir%\*.%ext10% %deskdir%\%deskfolder%\%textfilefolder%
del %deskdir%\*.%ext10%
del %pubdir%\*.%ext10%

if not exist %deskdir%\%deskfolder%\%textfilefolder% mkdir %deskdir%\%deskfolder%\%textfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext11% %deskdir%\%deskfolder%\%textfilefolder%
xcopy /q /y %pubdir%\*.%ext11% %deskdir%\%deskfolder%\%textfilefolder%
del %deskdir%\*.%ext11%
del %pubdir%\*.%ext11%

if not exist %deskdir%\%deskfolder%\%pdffilefolder% mkdir %deskdir%\%deskfolder%\%pdffilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext12% %deskdir%\%deskfolder%\%pdffilefolder%
xcopy /q /y %pubdir%\*.%ext12% %deskdir%\%deskfolder%\%pdffilefolder%
del %deskdir%\*.%ext12%
del %pubdir%\*.%ext12%

if not exist %viddir% mkdir %viddir%
echo f | xcopy /f /y %deskdir%\*.%ext13% %viddir%
xcopy /q /y %pubdir%\*.%ext13% %viddir%
del %deskdir%\*.%ext13%
del %pubdir%\*.%ext13%

if not exist %viddir% mkdir %viddir%
echo f | xcopy /f /y %deskdir%\*.%ext14% %viddir%
xcopy /q /y %pubdir%\*.%ext14% %viddir%
del %deskdir%\*.%ext14%
del %pubdir%\*.%ext14%

if not exist %viddir% mkdir %viddir%
echo f | xcopy /f /y %deskdir%\*.%ext15% %viddir%
xcopy /q /y %pubdir%\*.%ext15% %viddir%
del %deskdir%\*.%ext15%
del %pubdir%\*.%ext15%

if not exist %viddir% mkdir %viddir%
echo f | xcopy /f /y %deskdir%\*.%ext16% %viddir%
xcopy /q /y %pubdir%\*.%ext16% %viddir%
del %deskdir%\*.%ext16%
del %pubdir%\*.%ext16%

if not exist %viddir% mkdir %viddir%
echo f | xcopy /f /y %deskdir%\*.%ext17% %viddir%
xcopy /q /y %pubdir%\*.%ext17% %viddir%
del %deskdir%\*.%ext17%
del %pubdir%\*.%ext17%

if not exist %viddir% mkdir %viddir%
echo f | xcopy /f /y %deskdir%\*.%ext18% %viddir%
xcopy /q /y %pubdir%\*.%ext18% %viddir%
del %deskdir%\*.%ext18%
del %pubdir%\*.%ext18%

if not exist %viddir% mkdir %viddir%
echo f | xcopy /f /y %deskdir%\*.%ext19% %viddir%
xcopy /q /y %pubdir%\*.%ext19% %viddir%
del %deskdir%\*.%ext19%
del %pubdir%\*.%ext19%

if not exist %viddir% mkdir %viddir%
echo f | xcopy /f /y %deskdir%\*.%ext20% %viddir%
xcopy /q /y %pubdir%\*.%ext20% %viddir%
del %deskdir%\*.%ext20%
del %pubdir%\*.%ext20%

if not exist %viddir% mkdir %viddir%
echo f | xcopy /f /y %deskdir%\*.%ext21% %viddir%
xcopy /q /y %pubdir%\*.%ext21% %viddir%
del %deskdir%\*.%ext21%
del %pubdir%\*.%ext21%

if not exist %viddir% mkdir %viddir%
echo f | xcopy /f /y %deskdir%\*.%ext22% %viddir%
xcopy /q /y %pubdir%\*.%ext22% %viddir%
del %deskdir%\*.%ext22%
del %pubdir%\*.%ext22%

if not exist %viddir% mkdir %viddir%
echo f | xcopy /f /y %deskdir%\*.%ext23% %viddir%
xcopy /q /y %pubdir%\*.%ext23% %viddir%
del %deskdir%\*.%ext23%
del %pubdir%\*.%ext23%

if not exist %viddir% mkdir %viddir%
echo f | xcopy /f /y %deskdir%\*.%ext24% %viddir%
xcopy /q /y %pubdir%\*.%ext24% %viddir%
del %deskdir%\*.%ext24%
del %pubdir%\*.%ext24%

if not exist %viddir% mkdir %viddir%
echo f | xcopy /f /y %deskdir%\*.%ext25% %viddir%
xcopy /q /y %pubdir%\*.%ext25% %viddir%
del %deskdir%\*.%ext25%
del %pubdir%\*.%ext25%

if not exist %viddir% mkdir %viddir%
echo f | xcopy /f /y %deskdir%\*.%ext26% %viddir%
xcopy /q /y %pubdir%\*.%ext26% %viddir%
del %deskdir%\*.%ext26%
del %pubdir%\*.%ext26%

if not exist %viddir% mkdir %viddir%
echo f | xcopy /f /y %deskdir%\*.%ext27% %viddir%
xcopy /q /y %pubdir%\*.%ext27% %viddir%
del %deskdir%\*.%ext27%
del %pubdir%\*.%ext27%

if not exist %picdir% mkdir %picdir%
echo f | xcopy /f /y %deskdir%\*.%ext28% %picdir%
xcopy /q /y %pubdir%\*.%ext28% %picdir%
del %deskdir%\*.%ext28%
del %pubdir%\*.%ext28%

if not exist %picdir% mkdir %picdir%
echo f | xcopy /f /y %deskdir%\*.%ext29% %picdir%
xcopy /q /y %pubdir%\*.%ext29% %picdir%
del %deskdir%\*.%ext29%
del %pubdir%\*.%ext29%

if not exist %picdir% mkdir %picdir%
echo f | xcopy /f /y %deskdir%\*.%ext30% %picdir%
xcopy /q /y %pubdir%\*.%ext30% %picdir%
del %deskdir%\*.%ext30%
del %pubdir%\*.%ext30%

if not exist %picdir% mkdir %picdir%
echo f | xcopy /f /y %deskdir%\*.%ext31% %picdir%
xcopy /q /y %pubdir%\*.%ext31% %picdir%
del %deskdir%\*.%ext31%
del %pubdir%\*.%ext31%

if not exist %picdir% mkdir %picdir%
echo f | xcopy /f /y %deskdir%\*.%ext32% %picdir%
xcopy /q /y %pubdir%\*.%ext32% %picdir%
del %deskdir%\*.%ext32%
del %pubdir%\*.%ext32%

if not exist %picdir% mkdir %picdir%
echo f | xcopy /f /y %deskdir%\*.%ext33% %picdir%
xcopy /q /y %pubdir%\*.%ext33% %picdir%
del %deskdir%\*.%ext33%
del %pubdir%\*.%ext33%

if not exist %picdir% mkdir %picdir%
echo f | xcopy /f /y %deskdir%\*.%ext34% %picdir%
xcopy /q /y %pubdir%\*.%ext34% %picdir%
del %deskdir%\*.%ext34%
del %pubdir%\*.%ext34%

if not exist %picdir% mkdir %picdir%
echo f | xcopy /f /y %deskdir%\*.%ext35% %picdir%
xcopy /q /y %pubdir%\*.%ext35% %picdir%
del %deskdir%\*.%ext35%
del %pubdir%\*.%ext35%

if not exist %downdir% mkdir %downdir%
cd %deskdir%
echo f | xcopy /f /y %deskdir%\*.%ext36% %downdir%
cd %pubdir%
xcopy /q /y %pubdir%\*.%ext36% %downdir%
cd %deskdir%
del %deskdir%\*.%ext36%
cd %pubdir%
del %pubdir%\*.%ext36%

if not exist %downdir% mkdir %downdir%
cd %deskdir%
echo f | xcopy /f /y %deskdir%\*.%ext37% %downdir%
cd %pubdir%
xcopy /q /y %pubdir%\*.%ext37% %downdir%
cd %deskdir%
del %deskdir%\*.%ext37%
cd %pubdir%
del %pubdir%\*.%ext37%

if not exist %downdir% mkdir %downdir%
cd %deskdir%
echo f | xcopy /f /y %deskdir%\*.%ext38% %downdir%
cd %pubdir%
xcopy /q /y %pubdir%\*.%ext38% %downdir%
cd %deskdir%
del %deskdir%\*.%ext38%
cd %pubdir%
del %pubdir%\*.%ext38%

if not exist %downdir% mkdir %downdir%
cd %deskdir%
echo f | xcopy /f /y %deskdir%\*.%ext39% %downdir%
cd %pubdir%
xcopy /q /y %pubdir%\*.%ext39% %downdir%
cd %deskdir%
del %deskdir%\*.%ext39%
cd %pubdir%
del %pubdir%\*.%ext39%

if not exist %downdir% mkdir %downdir%
cd %deskdir%
echo f | xcopy /f /y %deskdir%\*.%ext40% %downdir%
cd %pubdir%
xcopy /q /y %pubdir%\*.%ext40% %downdir%
cd %deskdir%
del %deskdir%\*.%ext40%
cd %pubdir%
del %pubdir%\*.%ext40%

if not exist %downdir% mkdir %downdir%
cd %deskdir%
echo f | xcopy /f /y %deskdir%\*.%ext41% %downdir%
cd %pubdir%
xcopy /q /y %pubdir%\*.%ext41% %downdir%
cd %deskdir%
del %deskdir%\*.%ext41%
cd %pubdir%
del %pubdir%\*.%ext41%

cd %deskdir%

if not exist %deskdir%\%deskfolder%\%databasefilefolder% mkdir %deskdir%\%deskfolder%\%databasefilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext42% %deskdir%\%deskfolder%\%databasefilefolder%
xcopy /q /y %pubdir%\*.%ext42% %deskdir%\%deskfolder%\%databasefilefolder%
del %deskdir%\*.%ext42%
del %pubdir%\*.%ext42%

if not exist %deskdir%\%deskfolder%\%databasefilefolder% mkdir %deskdir%\%deskfolder%\%databasefilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext43% %deskdir%\%deskfolder%\%databasefilefolder%
xcopy /q /y %pubdir%\*.%ext43% %deskdir%\%deskfolder%\%databasefilefolder%
del %deskdir%\*.%ext43%
del %pubdir%\*.%ext43%

if not exist %deskdir%\%deskfolder%\%databasefilefolder% mkdir %deskdir%\%deskfolder%\%databasefilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext44% %deskdir%\%deskfolder%\%databasefilefolder%
xcopy /q /y %pubdir%\*.%ext44% %deskdir%\%deskfolder%\%databasefilefolder%
del %deskdir%\*.%ext44%
del %pubdir%\*.%ext44%

if not exist %deskdir%\%deskfolder%\%databasefilefolder% mkdir %deskdir%\%deskfolder%\%databasefilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext45% %deskdir%\%deskfolder%\%databasefilefolder%
xcopy /q /y %pubdir%\*.%ext45% %deskdir%\%deskfolder%\%databasefilefolder%
del %deskdir%\*.%ext45%
del %pubdir%\*.%ext45%

if not exist %deskdir%\%deskfolder%\%databasefilefolder% mkdir %deskdir%\%deskfolder%\%databasefilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext46% %deskdir%\%deskfolder%\%databasefilefolder%
xcopy /q /y %pubdir%\*.%ext46% %deskdir%\%deskfolder%\%databasefilefolder%
del %deskdir%\*.%ext46%
del %pubdir%\*.%ext46%

if not exist %deskdir%\%deskfolder%\%databasefilefolder% mkdir %deskdir%\%deskfolder%\%databasefilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext47% %deskdir%\%deskfolder%\%databasefilefolder%
xcopy /q /y %pubdir%\*.%ext47% %deskdir%\%deskfolder%\%databasefilefolder%
del %deskdir%\*.%ext47%
del %pubdir%\*.%ext47%

if not exist %deskdir%\%deskfolder%\%databasefilefolder% mkdir %deskdir%\%deskfolder%\%databasefilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext48% %deskdir%\%deskfolder%\%databasefilefolder%
xcopy /q /y %pubdir%\*.%ext48% %deskdir%\%deskfolder%\%databasefilefolder%
del %deskdir%\*.%ext48%
del %pubdir%\*.%ext48%

if not exist %deskdir%\%deskfolder%\%databasefilefolder% mkdir %deskdir%\%deskfolder%\%databasefilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext49% %deskdir%\%deskfolder%\%databasefilefolder%
xcopy /q /y %pubdir%\*.%ext49% %deskdir%\%deskfolder%\%databasefilefolder%
del %deskdir%\*.%ext49%
del %pubdir%\*.%ext49%

if not exist %deskdir%\%deskfolder%\%databasefilefolder% mkdir %deskdir%\%deskfolder%\%databasefilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext50% %deskdir%\%deskfolder%\%databasefilefolder%
xcopy /q /y %pubdir%\*.%ext50% %deskdir%\%deskfolder%\%databasefilefolder%
del %deskdir%\*.%ext50%
del %pubdir%\*.%ext50%

if not exist %deskdir%\%deskfolder%\%executablefilefolder% mkdir %deskdir%\%deskfolder%\%executablefilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext51% %deskdir%\%deskfolder%\%executablefilefolder%
xcopy /q /y %pubdir%\*.%ext51% %deskdir%\%deskfolder%\%executablefilefolder%
del %deskdir%\*.%ext51%
del %pubdir%\*.%ext51%

if not exist %deskdir%\%deskfolder%\%executablefilefolder% mkdir %deskdir%\%deskfolder%\%executablefilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext52% %deskdir%\%deskfolder%\%executablefilefolder%
xcopy /q /y %pubdir%\*.%ext52% %deskdir%\%deskfolder%\%executablefilefolder%
del %deskdir%\*.%ext52%
del %pubdir%\*.%ext52%

if not exist %deskdir%\%deskfolder%\%executablefilefolder% mkdir %deskdir%\%deskfolder%\%executablefilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext53% %deskdir%\%deskfolder%\%executablefilefolder%
xcopy /q /y %pubdir%\*.%ext53% %deskdir%\%deskfolder%\%executablefilefolder%
del %deskdir%\*.%ext53%
del %pubdir%\*.%ext53%

if not exist %deskdir%\%deskfolder%\%executablefilefolder% mkdir %deskdir%\%deskfolder%\%executablefilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext54% %deskdir%\%deskfolder%\%executablefilefolder%
xcopy /q /y %pubdir%\*.%ext54% %deskdir%\%deskfolder%\%executablefilefolder%
del %deskdir%\*.%ext54%
del %pubdir%\*.%ext54%

if not exist %deskdir%\%deskfolder%\%executablefilefolder% mkdir %deskdir%\%deskfolder%\%executablefilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext55% %deskdir%\%deskfolder%\%executablefilefolder%
xcopy /q /y %pubdir%\*.%ext55% %deskdir%\%deskfolder%\%executablefilefolder%
del %deskdir%\*.%ext55%
del %pubdir%\*.%ext55%

if not exist %deskdir%\%deskfolder%\%presentationfilefolder% mkdir %deskdir%\%deskfolder%\%presentationfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext56% %deskdir%\%deskfolder%\%presentationfilefolder%
xcopy /q /y %pubdir%\*.%ext56% %deskdir%\%deskfolder%\%presentationfilefolder%
del %deskdir%\*.%ext56%
del %pubdir%\*.%ext56%

if not exist %deskdir%\%deskfolder%\%presentationfilefolder% mkdir %deskdir%\%deskfolder%\%presentationfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext57% %deskdir%\%deskfolder%\%presentationfilefolder%
xcopy /q /y %pubdir%\*.%ext57% %deskdir%\%deskfolder%\%presentationfilefolder%
del %deskdir%\*.%ext57%
del %pubdir%\*.%ext57%

if not exist %deskdir%\%deskfolder%\%presentationfilefolder% mkdir %deskdir%\%deskfolder%\%presentationfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext58% %deskdir%\%deskfolder%\%presentationfilefolder%
xcopy /q /y %pubdir%\*.%ext58% %deskdir%\%deskfolder%\%presentationfilefolder%
del %deskdir%\*.%ext58%
del %pubdir%\*.%ext58%

if not exist %deskdir%\%deskfolder%\%systemfilefolder% mkdir %deskdir%\%deskfolder%\%systemfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext59% %deskdir%\%deskfolder%\%systemfilefolder%
xcopy /q /y %pubdir%\*.%ext59% %deskdir%\%deskfolder%\%systemfilefolder%
del %deskdir%\*.%ext59%
del %pubdir%\*.%ext59%

if not exist %deskdir%\%deskfolder%\%systemfilefolder% mkdir %deskdir%\%deskfolder%\%systemfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext60% %deskdir%\%deskfolder%\%systemfilefolder%
xcopy /q /y %pubdir%\*.%ext60% %deskdir%\%deskfolder%\%systemfilefolder%
del %deskdir%\*.%ext60%
del %pubdir%\*.%ext60%

if not exist %deskdir%\%deskfolder%\%systemfilefolder% mkdir %deskdir%\%deskfolder%\%systemfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext61% %deskdir%\%deskfolder%\%systemfilefolder%
xcopy /q /y %pubdir%\*.%ext61% %deskdir%\%deskfolder%\%systemfilefolder%
del %deskdir%\*.%ext61%
del %pubdir%\*.%ext61%

if not exist %deskdir%\%deskfolder%\%systemfilefolder% mkdir %deskdir%\%deskfolder%\%systemfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext62% %deskdir%\%deskfolder%\%systemfilefolder%
xcopy /q /y %pubdir%\*.%ext62% %deskdir%\%deskfolder%\%systemfilefolder%
del %deskdir%\*.%ext62%
del %pubdir%\*.%ext62%

if not exist %deskdir%\%deskfolder%\%systemfilefolder% mkdir %deskdir%\%deskfolder%\%systemfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext63% %deskdir%\%deskfolder%\%systemfilefolder%
xcopy /q /y %pubdir%\*.%ext63% %deskdir%\%deskfolder%\%systemfilefolder%
del %deskdir%\*.%ext63%
del %pubdir%\*.%ext63%

if not exist %deskdir%\%deskfolder%\%systemfilefolder% mkdir %deskdir%\%deskfolder%\%systemfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext64% %deskdir%\%deskfolder%\%systemfilefolder%
xcopy /q /y %pubdir%\*.%ext64% %deskdir%\%deskfolder%\%systemfilefolder%
del %deskdir%\*.%ext64%
del %pubdir%\*.%ext64%

if not exist %deskdir%\%deskfolder%\%systemfilefolder% mkdir %deskdir%\%deskfolder%\%systemfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext65% %deskdir%\%deskfolder%\%systemfilefolder%
xcopy /q /y %pubdir%\*.%ext65% %deskdir%\%deskfolder%\%systemfilefolder%
del %deskdir%\*.%ext65%
del %pubdir%\*.%ext65%

if not exist %deskdir%\%deskfolder%\%systemfilefolder% mkdir %deskdir%\%deskfolder%\%systemfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext66% %deskdir%\%deskfolder%\%systemfilefolder%
xcopy /q /y %pubdir%\*.%ext66% %deskdir%\%deskfolder%\%systemfilefolder%
del %deskdir%\*.%ext66%
del %pubdir%\*.%ext66%

if not exist %deskdir%\%deskfolder%\%internetfilefolder% mkdir %deskdir%\%deskfolder%\%internetfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext67% %deskdir%\%deskfolder%\%internetfilefolder%
xcopy /q /y %pubdir%\*.%ext67% %deskdir%\%deskfolder%\%internetfilefolder%
del %deskdir%\*.%ext67%
del %pubdir%\*.%ext67%

if not exist %deskdir%\%deskfolder%\%internetfilefolder% mkdir %deskdir%\%deskfolder%\%internetfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext68% %deskdir%\%deskfolder%\%internetfilefolder%
xcopy /q /y %pubdir%\*.%ext68% %deskdir%\%deskfolder%\%internetfilefolder%
del %deskdir%\*.%ext68%
del %pubdir%\*.%ext68%

if not exist %deskdir%\%deskfolder%\%internetfilefolder% mkdir %deskdir%\%deskfolder%\%internetfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext69% %deskdir%\%deskfolder%\%internetfilefolder%
xcopy /q /y %pubdir%\*.%ext69% %deskdir%\%deskfolder%\%internetfilefolder%
del %deskdir%\*.%ext69%
del %pubdir%\*.%ext69%

if not exist %deskdir%\%deskfolder%\%internetfilefolder% mkdir %deskdir%\%deskfolder%\%internetfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext70% %deskdir%\%deskfolder%\%internetfilefolder%
xcopy /q /y %pubdir%\*.%ext70% %deskdir%\%deskfolder%\%internetfilefolder%
del %deskdir%\*.%ext70%
del %pubdir%\*.%ext70%

if not exist %deskdir%\%deskfolder%\%internetfilefolder% mkdir %deskdir%\%deskfolder%\%internetfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext71% %deskdir%\%deskfolder%\%internetfilefolder%
xcopy /q /y %pubdir%\*.%ext71% %deskdir%\%deskfolder%\%internetfilefolder%
del %deskdir%\*.%ext71%
del %pubdir%\*.%ext71%

if not exist %deskdir%\%deskfolder%\%internetfilefolder% mkdir %deskdir%\%deskfolder%\%internetfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext72% %deskdir%\%deskfolder%\%internetfilefolder%
xcopy /q /y %pubdir%\*.%ext72% %deskdir%\%deskfolder%\%internetfilefolder%
del %deskdir%\*.%ext72%
del %pubdir%\*.%ext72%

if not exist %deskdir%\%deskfolder%\%internetfilefolder% mkdir %deskdir%\%deskfolder%\%internetfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext73% %deskdir%\%deskfolder%\%internetfilefolder%
xcopy /q /y %pubdir%\*.%ext73% %deskdir%\%deskfolder%\%internetfilefolder%
del %deskdir%\*.%ext73%
del %pubdir%\*.%ext73%

if not exist %deskdir%\%deskfolder%\%internetfilefolder% mkdir %deskdir%\%deskfolder%\%internetfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext74% %deskdir%\%deskfolder%\%internetfilefolder%
xcopy /q /y %pubdir%\*.%ext74% %deskdir%\%deskfolder%\%internetfilefolder%
del %deskdir%\*.%ext74%
del %pubdir%\*.%ext74%

if not exist %musdir% mkdir %musdir%
echo f | xcopy /f /y %deskdir%\*.%ext75% %musdir%
xcopy /q /y %pubdir%\*.%ext75% %musdir%
del %deskdir%\*.%ext75%
del %pubdir%\*.%ext75%

if not exist %musdir% mkdir %musdir%
echo f | xcopy /f /y %deskdir%\*.%ext76% %musdir%
xcopy /q /y %pubdir%\*.%ext76% %musdir%
del %deskdir%\*.%ext76%
del %pubdir%\*.%ext76%

if not exist %musdir% mkdir %musdir%
echo f | xcopy /f /y %deskdir%\*.%ext77% %musdir%
xcopy /q /y %pubdir%\*.%ext77% %musdir%
del %deskdir%\*.%ext77%
del %pubdir%\*.%ext77%

if not exist %musdir% mkdir %musdir%
echo f | xcopy /f /y %deskdir%\*.%ext78% %musdir%
xcopy /q /y %pubdir%\*.%ext78% %musdir%
del %deskdir%\*.%ext78%
del %pubdir%\*.%ext78%

if not exist %musdir% mkdir %musdir%
echo f | xcopy /f /y %deskdir%\*.%ext79% %musdir%
xcopy /q /y %pubdir%\*.%ext79% %musdir%
del %deskdir%\*.%ext79%
del %pubdir%\*.%ext79%

if not exist %musdir% mkdir %musdir%
echo f | xcopy /f /y %deskdir%\*.%ext80% %musdir%
xcopy /q /y %pubdir%\*.%ext80% %musdir%
del %deskdir%\*.%ext80%
del %pubdir%\*.%ext80%

if not exist %musdir% mkdir %musdir%
echo f | xcopy /f /y %deskdir%\*.%ext81% %musdir%
xcopy /q /y %pubdir%\*.%ext81% %musdir%
del %deskdir%\*.%ext81%
del %pubdir%\*.%ext81%

if not exist %deskdir%\%deskfolder%\%executablefilefolder% mkdir %deskdir%\%deskfolder%\%executablefilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext82% %deskdir%\%deskfolder%\%executablefilefolder%
xcopy /q /y %pubdir%\*.%ext82% %deskdir%\%deskfolder%\%executablefilefolder%
del %deskdir%\*.%ext82%
del %pubdir%\*.%ext82%

if not exist %deskdir%\%deskfolder%\%codingfilefolder% mkdir %deskdir%\%deskfolder%\%codingfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext83% %deskdir%\%deskfolder%\%codingfilefolder%
xcopy /q /y %pubdir%\*.%ext83% %deskdir%\%deskfolder%\%codingfilefolder%
del %deskdir%\*.%ext83%
del %pubdir%\*.%ext83%

if not exist %deskdir%\%deskfolder%\%codingfilefolder% mkdir %deskdir%\%deskfolder%\%codingfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext84% %deskdir%\%deskfolder%\%codingfilefolder%
xcopy /q /y %pubdir%\*.%ext84% %deskdir%\%deskfolder%\%codingfilefolder%
del %deskdir%\*.%ext84%
del %pubdir%\*.%ext84%

if not exist %deskdir%\%deskfolder%\%codingfilefolder% mkdir %deskdir%\%deskfolder%\%codingfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext85% %deskdir%\%deskfolder%\%codingfilefolder%
xcopy /q /y %pubdir%\*.%ext85% %deskdir%\%deskfolder%\%codingfilefolder%
del %deskdir%\*.%ext85%
del %pubdir%\*.%ext85%

if not exist %deskdir%\%deskfolder%\%codingfilefolder% mkdir %deskdir%\%deskfolder%\%codingfilefolder%
echo f | xcopy /f /y %deskdir%\*.%ext86% %deskdir%\%deskfolder%\%codingfilefolder%
xcopy /q /y %pubdir%\*.%ext86% %deskdir%\%deskfolder%\%codingfilefolder%
del %deskdir%\*.%ext86%
del %pubdir%\*.%ext86%

if not exist %picdir% mkdir %picdir%
echo f | xcopy /f /y %deskdir%\*.%ext87% %picdir%
xcopy /q /y %pubdir%\*.%ext87% %picdir%
del %deskdir%\*.%ext87%
del %pubdir%\*.%ext87%

echo.
echo.
ROBOCOPY %deskdir%\%deskfolder% %deskdir%\%deskfolder% /S /MOVE
echo.
xcopy /q /y "%deskdir%\%shortcutfolder%\Deze pc.%ext1%" %deskdir%
xcopy /q /y "%deskdir%\%shortcutfolder%\This pc.%ext1%" %deskdir%
echo.
echo.
echo Desktop is cleaned..
ping localhost -n 10 >NUL
goto mainMenu

:aChkDsk
cls
title %appname% %appvers% - %appstat% [ChkDsk]
echo # %divider%
echo # .88b  d88.  .d88b.   .d88b.  d888888b d8888b. d888888b db    db 
echo # 88'YbdP`88 .8P  Y8. .8P  Y8. `~~88~~' 88  `8D   `88'   `8b  d8' 
echo # 88  88  88 88    88 88    88    88    88oobY'    88     `8bd8'  
echo # 88  88  88 88    88 88    88    88    88`8b      88     .dPYb.  
echo # 88  88  88 `8b  d8' `8b  d8'    88    88 `88.   .88.   .8P  Y8. 
echo # YP  YP  YP  `Y88P'   `Y88P'     YP    88   YD Y888888P YP    YP 
echo # %divider%
echo #   .o88b. db      d88888b  .d8b.  d8b   db d88888b d8888b. 
echo #  d8P  Y8 88      88'     d8' `8b 888o  88 88'     88  `8D 
echo #  8P      88      88ooooo 88ooo88 88V8o 88 88ooooo 88oobY' 
echo #  8b      88      88~~~~~ 88~~~88 88 V8o88 88~~~~~ 88`8b   
echo #  Y8b  d8 88booo. 88.     88   88 88  V888 88.     88 `88. 
echo #   `Y88P' Y88888P Y88888P YP   YP VP   V8P Y88888P 88   YD 
echo # %divider%
echo # Version %appvers% - %appstat%
echo # by %dev%
echo # %divider%
color %uicolor%
echo #
echo # Running ChkDsk..
echo # %divider%
ping localhost -n 2 >NUL
chkdsk c: /f
timeout /t 3 /nobreak> null
goto aDiskClean

:aDiskClean
cls
title %appname% %appvers% - %appstat% [DiskClean]
echo # %divider%
echo # .88b  d88.  .d88b.   .d88b.  d888888b d8888b. d888888b db    db 
echo # 88'YbdP`88 .8P  Y8. .8P  Y8. `~~88~~' 88  `8D   `88'   `8b  d8' 
echo # 88  88  88 88    88 88    88    88    88oobY'    88     `8bd8'  
echo # 88  88  88 88    88 88    88    88    88`8b      88     .dPYb.  
echo # 88  88  88 `8b  d8' `8b  d8'    88    88 `88.   .88.   .8P  Y8. 
echo # YP  YP  YP  `Y88P'   `Y88P'     YP    88   YD Y888888P YP    YP 
echo # %divider%
echo #   .o88b. db      d88888b  .d8b.  d8b   db d88888b d8888b. 
echo #  d8P  Y8 88      88'     d8' `8b 888o  88 88'     88  `8D 
echo #  8P      88      88ooooo 88ooo88 88V8o 88 88ooooo 88oobY' 
echo #  8b      88      88~~~~~ 88~~~88 88 V8o88 88~~~~~ 88`8b   
echo #  Y8b  d8 88booo. 88.     88   88 88  V888 88.     88 `88. 
echo #   `Y88P' Y88888P Y88888P YP   YP VP   V8P Y88888P 88   YD 
echo # %divider%
echo # Version %appvers% - %appstat%
echo # by %dev%
echo # %divider%
color %uicolor%
echo #
echo # Starting Cleanmgr Disc cleaner..
echo # %divider%
ping localhost -n 2 >NUL
cleanmgr /d %systemroot% lowdisk
timeout /t 3 /nobreak> null
goto aSystemFileChecker

:aSystemFileChecker
cls
title %appname% %appvers% - %appstat% [SystemFile Checker]
echo # %divider%
echo # .88b  d88.  .d88b.   .d88b.  d888888b d8888b. d888888b db    db 
echo # 88'YbdP`88 .8P  Y8. .8P  Y8. `~~88~~' 88  `8D   `88'   `8b  d8' 
echo # 88  88  88 88    88 88    88    88    88oobY'    88     `8bd8'  
echo # 88  88  88 88    88 88    88    88    88`8b      88     .dPYb.  
echo # 88  88  88 `8b  d8' `8b  d8'    88    88 `88.   .88.   .8P  Y8. 
echo # YP  YP  YP  `Y88P'   `Y88P'     YP    88   YD Y888888P YP    YP 
echo # %divider%
echo #   .o88b. db      d88888b  .d8b.  d8b   db d88888b d8888b. 
echo #  d8P  Y8 88      88'     d8' `8b 888o  88 88'     88  `8D 
echo #  8P      88      88ooooo 88ooo88 88V8o 88 88ooooo 88oobY' 
echo #  8b      88      88~~~~~ 88~~~88 88 V8o88 88~~~~~ 88`8b   
echo #  Y8b  d8 88booo. 88.     88   88 88  V888 88.     88 `88. 
echo #   `Y88P' Y88888P Y88888P YP   YP VP   V8P Y88888P 88   YD 
echo # %divider%
echo # Version %appvers% - %appstat%
echo # by %dev%
echo # %divider%
color %uicolor%
echo #
echo # Starting SystemFile Checker..
echo # %divider%
ping localhost -n 2 >NUL
sfc /scannow
ping localhost -n 2 >NUL
DISM /Online /Cleanup-Image /RestoreHealth
timeout /t 3 /nobreak> null
goto ahistoryCleaner

:ahistoryCleaner
cls
title %appname% %appvers% - %appstat% [History cleaner]
echo # %divider%
echo # .88b  d88.  .d88b.   .d88b.  d888888b d8888b. d888888b db    db 
echo # 88'YbdP`88 .8P  Y8. .8P  Y8. `~~88~~' 88  `8D   `88'   `8b  d8' 
echo # 88  88  88 88    88 88    88    88    88oobY'    88     `8bd8'  
echo # 88  88  88 88    88 88    88    88    88`8b      88     .dPYb.  
echo # 88  88  88 `8b  d8' `8b  d8'    88    88 `88.   .88.   .8P  Y8. 
echo # YP  YP  YP  `Y88P'   `Y88P'     YP    88   YD Y888888P YP    YP 
echo # %divider%
echo #   .o88b. db      d88888b  .d8b.  d8b   db d88888b d8888b. 
echo #  d8P  Y8 88      88'     d8' `8b 888o  88 88'     88  `8D 
echo #  8P      88      88ooooo 88ooo88 88V8o 88 88ooooo 88oobY' 
echo #  8b      88      88~~~~~ 88~~~88 88 V8o88 88~~~~~ 88`8b   
echo #  Y8b  d8 88booo. 88.     88   88 88  V888 88.     88 `88. 
echo #   `Y88P' Y88888P Y88888P YP   YP VP   V8P Y88888P 88   YD 
echo # %divider%
echo # Version %appvers% - %appstat%
echo # by %dev%
echo # %divider%
color %uicolor%
echo #
echo # Starting History cleaner..
echo # %divider%
ping localhost -n 2 >NUL
echo Cleaning temporary files...
rd %temp%
echo Cleaning junk files...
del /f /s /q %systemdrive%\*.tmp
ping localhost -n 01 >nul
del /f /s /q %systemdrive%\*._mp
ping localhost -n 01 >nul
del /f /s /q %systemdrive%\*.log
ping localhost -n 01 >nul
del /f /s /q %systemdrive%\*.gid
ping localhost -n 01 >nul
del /f /s /q %systemdrive%\*.chk
ping localhost -n 01 >nul
del /f /s /q %systemdrive%\*.old
ping localhost -n 01 >nul
del /f /s /q %systemdrive%\recycled\*.*
ping localhost -n 01 >nul
del /f /s /q %windir%\*.bak
ping localhost -n 01 >nul
del /f /s /q %windir%\prefetch\*.*
ping localhost -n 01 >nul
rd /s /q %windir%\temp & md %windir%\temp
ping localhost -n 01 >nul
del /f /q %userprofile%\cookies\*.*
ping localhost -n 01 >nul
del /f /q %userprofile%\recent\*.*
ping localhost -n 01 >nul
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
ping localhost -n 01 >nul
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
ping localhost -n 01 >nul
del /f /s /q %userprofile%\recent\*.*
ping localhost -n 01 >nul
echo Done Please wait a few seconds...
timeout /t 10 /nobreak> null
goto aDefrag

:aDefrag
cls
title %appname% %appvers% - %appstat% [Defrag]
echo # %divider%
echo # .88b  d88.  .d88b.   .d88b.  d888888b d8888b. d888888b db    db 
echo # 88'YbdP`88 .8P  Y8. .8P  Y8. `~~88~~' 88  `8D   `88'   `8b  d8' 
echo # 88  88  88 88    88 88    88    88    88oobY'    88     `8bd8'  
echo # 88  88  88 88    88 88    88    88    88`8b      88     .dPYb.  
echo # 88  88  88 `8b  d8' `8b  d8'    88    88 `88.   .88.   .8P  Y8. 
echo # YP  YP  YP  `Y88P'   `Y88P'     YP    88   YD Y888888P YP    YP 
echo # %divider%
echo #   .o88b. db      d88888b  .d8b.  d8b   db d88888b d8888b. 
echo #  d8P  Y8 88      88'     d8' `8b 888o  88 88'     88  `8D 
echo #  8P      88      88ooooo 88ooo88 88V8o 88 88ooooo 88oobY' 
echo #  8b      88      88~~~~~ 88~~~88 88 V8o88 88~~~~~ 88`8b   
echo #  Y8b  d8 88booo. 88.     88   88 88  V888 88.     88 `88. 
echo #   `Y88P' Y88888P Y88888P YP   YP VP   V8P Y88888P 88   YD 
echo # %divider%
echo # Version %appvers% - %appstat%
echo # by %dev%
echo # %divider%
color %uicolor%
echo #
echo # Starting Defrag..
echo # %divider%
ping localhost -n 2 >NUL
defrag /c /d /o /u /v /h
timeout /t 3 /nobreak> null
goto aRepair

:aRepair
cls
title %appname% %appvers% - %appstat% [Windows 10 repair]
echo # %divider%
echo # .88b  d88.  .d88b.   .d88b.  d888888b d8888b. d888888b db    db 
echo # 88'YbdP`88 .8P  Y8. .8P  Y8. `~~88~~' 88  `8D   `88'   `8b  d8' 
echo # 88  88  88 88    88 88    88    88    88oobY'    88     `8bd8'  
echo # 88  88  88 88    88 88    88    88    88`8b      88     .dPYb.  
echo # 88  88  88 `8b  d8' `8b  d8'    88    88 `88.   .88.   .8P  Y8. 
echo # YP  YP  YP  `Y88P'   `Y88P'     YP    88   YD Y888888P YP    YP 
echo # %divider%
echo #   .o88b. db      d88888b  .d8b.  d8b   db d88888b d8888b. 
echo #  d8P  Y8 88      88'     d8' `8b 888o  88 88'     88  `8D 
echo #  8P      88      88ooooo 88ooo88 88V8o 88 88ooooo 88oobY' 
echo #  8b      88      88~~~~~ 88~~~88 88 V8o88 88~~~~~ 88`8b   
echo #  Y8b  d8 88booo. 88.     88   88 88  V888 88.     88 `88. 
echo #   `Y88P' Y88888P Y88888P YP   YP VP   V8P Y88888P 88   YD 
echo # %divider%
echo # Version %appvers% - %appstat%
echo # by %dev%
echo # %divider%
color %uicolor%
echo #
echo # Repairing Windows...
echo # %divider%

:bits
set /a b=%b%+1
if %b% equ 3 (
   goto end1
) 
net stop bits
echo Checking the bits service status.
sc query bits | findstr /I /C:"STOPPED" 
if not %errorlevel%==0 ( 
    goto bits 
) 
goto loop2

:end1
cls
echo.
echo Failed to reset Windows Update due to bits service failing to stop
echo Please run the script as administrator or your BITS service isn't responding.
echo.
pause
goto Start


:loop2
set w=0

:wuauserv
set /a w=%w%+1
if %w% equ 3 (
   goto end2
) 
net stop wuauserv
echo Checking the wuauserv service status.
sc query wuauserv | findstr /I /C:"STOPPED" 
if not %errorlevel%==0 ( 
    goto wuauserv 
) 
goto loop3

:end2
cls
echo.
echo Failed to reset Windows Update due to wuauserv service failing to stop.
echo.
pause
goto Start



:loop3
set app=0

:appidsvc
set /a app=%app%+1
if %app% equ 3 (
   goto end3
) 
net stop appidsvc
echo Checking the appidsvc service status.
sc query appidsvc | findstr /I /C:"STOPPED" 
if not %errorlevel%==0 ( 
    goto appidsvc 
) 
goto loop4

:end3
cls
echo.
echo Failed to reset Windows Update due to appidsvc service failing to stop.
echo.
pause
goto Start


:loop4
set c=0

:cryptsvc
set /a c=%c%+1
if %c% equ 3 (
   goto end4
) 
net stop cryptsvc
echo Checking the cryptsvc service status.
sc query cryptsvc | findstr /I /C:"STOPPED" 
if not %errorlevel%==0 ( 
    goto cryptsvc 
) 
goto Reset

:end4
cls
echo.
echo Failed to reset Windows Update due to cryptsvc service failing to stop.
echo.
pause
goto Start


:Reset
echo Deleting *.qmgr files
del /s /q /f "%ALLUSERSPROFILE%\Microsoft\Network\Downloader\qmgr*.dat"
del /s /q /f "%ALLUSERSPROFILE%\Application Data\Microsoft\Network\Downloader\qmgr*.dat" 


echo Removing Windows update cache files....
echo .

cd /d %windir%\system32

if exist "%SYSTEMROOT%\winsxs\pending.xml.bak" del /s /q /f "%SYSTEMROOT%\winsxs\pending.xml.bak" 
if exist "%SYSTEMROOT%\winsxs\pending.xml" ( 
    takeown /f "%SYSTEMROOT%\winsxs\pending.xml" 
    attrib -r -s -h /s /d "%SYSTEMROOT%\winsxs\pending.xml" 
    ren "%SYSTEMROOT%\winsxs\pending.xml" pending.xml.bak 
) 
  
if exist "%SYSTEMROOT%\SoftwareDistribution.bak" rmdir /s /q "%SYSTEMROOT%\SoftwareDistribution.bak"
if exist "%SYSTEMROOT%\SoftwareDistribution" ( 
    attrib -r -s -h /s /d "%SYSTEMROOT%\SoftwareDistribution" 
    ren "%SYSTEMROOT%\SoftwareDistribution" SoftwareDistribution.bak 
) 
 
if exist "%SYSTEMROOT%\system32\Catroot2.bak" rmdir /s /q "%SYSTEMROOT%\system32\Catroot2.bak" 
if exist "%SYSTEMROOT%\system32\Catroot2" ( 
    attrib -r -s -h /s /d "%SYSTEMROOT%\system32\Catroot2" 
    ren "%SYSTEMROOT%\system32\Catroot2" Catroot2.bak 
) 
  
if exist "%SYSTEMROOT%\WindowsUpdate.log.bak" del /s /q /f "%SYSTEMROOT%\WindowsUpdate.log.bak" 
if exist "%SYSTEMROOT%\WindowsUpdate.log" ( 
    attrib -r -s -h /s /d "%SYSTEMROOT%\WindowsUpdate.log" 
    ren "%SYSTEMROOT%\WindowsUpdate.log" WindowsUpdate.log.bak 
) 

echo Resetting Update services security descriptors
echo .
sc.exe sdset wuauserv D:(A;;CCLCSWLOCRRC;;;AU)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCDCLCSWRPWPDTLCRSDRCWDWO;;;SO)(A;;CCLCSWRPWPDTLOCRRC;;;SY)S:(AU;FA;CCDCLCSWRPWPDTLOCRSDRCWDWO;;WD)
	sc.exe sdset bits D:(A;;CCLCSWLOCRRC;;;AU)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCDCLCSWRPWPDTLCRSDRCWDWO;;;SO)(A;;CCLCSWRPWPDTLOCRRC;;;SY)S:(AU;FA;CCDCLCSWRPWPDTLOCRSDRCWDWO;;WD)
	sc.exe sdset cryptsvc D:(A;;CCLCSWLOCRRC;;;AU)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCDCLCSWRPWPDTLCRSDRCWDWO;;;SO)(A;;CCLCSWRPWPDTLOCRRC;;;SY)S:(AU;FA;CCDCLCSWRPWPDTLOCRSDRCWDWO;;WD)
	sc.exe sdset trustedinstaller D:(A;;CCLCSWLOCRRC;;;AU)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCDCLCSWRPWPDTLCRSDRCWDWO;;;SO)(A;;CCLCSWRPWPDTLOCRRC;;;SY)S:(AU;FA;CCDCLCSWRPWPDTLOCRSDRCWDWO;;WD) 

echo Re-registering Windows update files

cd /d %SYSTEMROOT%\system32

	regsvr32.exe /s atl.dll
	regsvr32.exe /s urlmon.dll
	regsvr32.exe /s mshtml.dll
	regsvr32.exe /s shdocvw.dll
	regsvr32.exe /s browseui.dll
	regsvr32.exe /s jscript.dll
	regsvr32.exe /s vbscript.dll
	regsvr32.exe /s scrrun.dll
	regsvr32.exe /s msxml.dll
	regsvr32.exe /s msxml3.dll
	regsvr32.exe /s msxml6.dll
	regsvr32.exe /s actxprxy.dll
	regsvr32.exe /s softpub.dll
	regsvr32.exe /s wintrust.dll
	regsvr32.exe /s dssenh.dll
	regsvr32.exe /s rsaenh.dll
	regsvr32.exe /s gpkcsp.dll
	regsvr32.exe /s sccbase.dll
	regsvr32.exe /s slbcsp.dll
	regsvr32.exe /s cryptdlg.dll
	regsvr32.exe /s oleaut32.dll
	regsvr32.exe /s ole32.dll
	regsvr32.exe /s shell32.dll
	regsvr32.exe /s initpki.dll
	regsvr32.exe /s wuapi.dll
	regsvr32.exe /s wuaueng.dll
	regsvr32.exe /s wuaueng1.dll
	regsvr32.exe /s wucltui.dll
	regsvr32.exe /s wups.dll
	regsvr32.exe /s wups2.dll
	regsvr32.exe /s wuweb.dll
	regsvr32.exe /s qmgr.dll
	regsvr32.exe /s qmgrprxy.dll
	regsvr32.exe /s wucltux.dll
	regsvr32.exe /s muweb.dll
	regsvr32.exe /s wuwebv.dll

echo Resetting Winsock and Proxy
echo .
netsh winsock reset
netsh winsock reset proxy

echo Resetting the services as automatic
echo .

	sc.exe config wuauserv start= auto
	sc.exe config bits start= delayed-auto
	sc.exe config cryptsvc start= auto
	sc.exe config TrustedInstaller start= demand
	sc.exe config DcomLaunch start= auto

:Start
echo Starting services
echo .
net start bits
net start wuauserv
net start appidsvc
net start cryptsvc
timeout /t 10 /nobreak> null
goto amazing

:amazing
cls
title %appname% %appvers% - %appstat% [Extra Cleaning]
echo # %divider%
echo # .88b  d88.  .d88b.   .d88b.  d888888b d8888b. d888888b db    db 
echo # 88'YbdP`88 .8P  Y8. .8P  Y8. `~~88~~' 88  `8D   `88'   `8b  d8' 
echo # 88  88  88 88    88 88    88    88    88oobY'    88     `8bd8'  
echo # 88  88  88 88    88 88    88    88    88`8b      88     .dPYb.  
echo # 88  88  88 `8b  d8' `8b  d8'    88    88 `88.   .88.   .8P  Y8. 
echo # YP  YP  YP  `Y88P'   `Y88P'     YP    88   YD Y888888P YP    YP 
echo # %divider%
echo #   .o88b. db      d88888b  .d8b.  d8b   db d88888b d8888b. 
echo #  d8P  Y8 88      88'     d8' `8b 888o  88 88'     88  `8D 
echo #  8P      88      88ooooo 88ooo88 88V8o 88 88ooooo 88oobY' 
echo #  8b      88      88~~~~~ 88~~~88 88 V8o88 88~~~~~ 88`8b   
echo #  Y8b  d8 88booo. 88.     88   88 88  V888 88.     88 `88. 
echo #   `Y88P' Y88888P Y88888P YP   YP VP   V8P Y88888P 88   YD 
echo # %divider%
echo # Version %appvers% - %appstat%
echo # by %dev%
echo # %divider%
color %uicolor%
echo #
echo Cleaning DNS records from cache...
ipconfig /FlushDNS
ping localhost -n 01 >nul
echo Cleaning Microsoft Store cache...
ping localhost -n 01 >nul
wsreset.exe
ping localhost -n 10 >nul
taskkill /f /im WinStore.App.exe
ping localhost -n 03 >nul
timeout /t 3 /nobreak> null
goto TheEnd

:TheEnd
cls
title %appname% %appvers% - %appstat% [Cleaning Complete]
echo # %divider%
echo # .88b  d88.  .d88b.   .d88b.  d888888b d8888b. d888888b db    db 
echo # 88'YbdP`88 .8P  Y8. .8P  Y8. `~~88~~' 88  `8D   `88'   `8b  d8' 
echo # 88  88  88 88    88 88    88    88    88oobY'    88     `8bd8'  
echo # 88  88  88 88    88 88    88    88    88`8b      88     .dPYb.  
echo # 88  88  88 `8b  d8' `8b  d8'    88    88 `88.   .88.   .8P  Y8. 
echo # YP  YP  YP  `Y88P'   `Y88P'     YP    88   YD Y888888P YP    YP 
echo # %divider%
echo #   .o88b. db      d88888b  .d8b.  d8b   db d88888b d8888b. 
echo #  d8P  Y8 88      88'     d8' `8b 888o  88 88'     88  `8D 
echo #  8P      88      88ooooo 88ooo88 88V8o 88 88ooooo 88oobY' 
echo #  8b      88      88~~~~~ 88~~~88 88 V8o88 88~~~~~ 88`8b   
echo #  Y8b  d8 88booo. 88.     88   88 88  V888 88.     88 `88. 
echo #   `Y88P' Y88888P Y88888P YP   YP VP   V8P Y88888P 88   YD 
echo # %divider%
echo # Version %appvers% - %appstat%
echo # by %dev%
echo # %divider%
color %uicolor%
echo #
echo # Cleaning and Repairing completed sucessfully!
ping localhost -n 01 >nul
echo # Thank you for using Mootrix-cleaner!
ping localhost -n 01 >nul
echo # Have a nice day!
ping localhost -n 01 >nul
echo #
ping localhost -n 01 >nul
echo # Rebooting highly recommended, do you want to reboot now?
ping localhost -n 01 >nul
echo #
echo # Yes ....................... [1] (default)
echo # No ........................ [2]
echo #
set/p "rebootMenu=# %cliN%> " || set rebootMenu=1
if %rebootMenu%==1 shutdown.exe /r /t 00
if %rebootMenu%==2 exitProgram
pause>null
goto errMes01