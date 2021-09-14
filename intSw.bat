@echo off

CHCP 65001

set d=%USERPROFILE%\Desktop

::脚本开始

:loop
cls
echo ******************************************************************

echo ***** Install Tool Software ************ FUJISOFT CHINA Corp. ****

echo ******************************************************************
echo **  a. 7z压缩软件        ********

echo **  b. office2019        ********

echo **  c. RTX               ********

echo **  d. McAfee            ********

echo **  e. PDF阅读器         ********

echo **  f. One-Key Install(网管用)***

echo **  g. exit              ********

echo ****************************************
echo.
echo ※注意：软件安装路径请保持默认！防止出现脚本运行错误！
echo.

choice /c abcdefg /M "Please Choose"

if errorlevel 7 goto exit

if errorlevel 6 goto auto

if errorlevel 5 goto PDF

if errorlevel 4 goto McAfee

if errorlevel 3 goto RTX

if errorlevel 2 goto office

if errorlevel 1 goto 7z

:7z
cls
echo *****************************************************************
echo 开始安装7z压缩软件...
start \\172.29.139.1\share01\90_共通\tools\01_压缩工具\7z\7z1900-x64.exe
echo.
pause
goto loop

:office
cls
echo *****************************************************************
echo 开始安装office2019...
start \\172.29.139.1\share01\90_共通\tools\12_Office\office2019\00_Install_Office2019.bat
echo.
pause
goto loop

:RTX
cls
echo *****************************************************************
echo 开始安装RTX...
start \\172.29.139.1\share01\90_共通\tools\90_RTX\rtxclient2015formal.exe
echo.
pause
goto loop


:McAfee
cls
echo *****************************************************************
echo 开始安装McAfee...
mkdir %d%\tools\
copy \\172.29.139.1\share01\90_共通\tools\24_杀毒软件\McAfeeSmartInstall.exe %d%\tools\
start %d%\tools\McAfeeSmartInstall.exe
echo.
echo McAfee安装文件即将清理，按任意键继续...
echo.
pause>nul
echo 正在删除tools文件夹...
echo.
rd /s /q %d%\tools\ && echo 删除完成！
echo.
pause
goto loop


:PDF
::C:\Program Files (x86)\Adobe\Acrobat 10.0\
cls
echo *****************************************************************
echo 开始安装PDF阅读器...
echo.
start \\172.29.139.1\share01\90_共通\tools\02_PDF阅读器\AdobeAcrobatX\AcrobatPro_10_Web_WWEFD.exe
echo 1、选择 英语
echo 2、选择 Install the trial version
echo 3、选择 Complete
echo 4、安装路径保持不变，重要！
echo.
echo ※安装完成后再执行破解操作！！！按任意键继续...
pause>nul
echo 开始复制amtlib.dll文件...
echo Yes | copy "\\172.29.139.1\share01\90_共通\tools\02_PDF阅读器\AdobeAcrobatX\amtlib破解文件\amtlib.dll"  "C:\Program Files (x86)\Adobe\Acrobat 10.0\Acrobat"
mkdir "C:\Program Files (x86)\Adobe\Acrobat 10.0\Acrobat\Locale\zh_CN"
echo 开始复制zh_CN文件...
xcopy "\\172.29.139.1\share01\90_共通\tools\02_PDF阅读器\AdobeAcrobatX\zh_CN" "C:\Program Files (x86)\Adobe\Acrobat 10.0\Acrobat\Locale\zh_CN\"  /E/R/I/D/Y
echo.
echo ※破解完成！在软件设置中，更改语言：打开软件按"Ctrl+K" --- International --- Application Language --- Choose at application startup --- 重启软件，选择"中文（简体）"
echo.
pause
echo.
echo 正在删除Adobe Acrobat X文件夹...  && echo 删除完成
rd /s /q %d%\"Adobe Acrobat X"
pause
goto loop

:auto

cls
echo *****************************************************************
echo 开始安装7z压缩软件...
start \\172.29.139.1\share01\90_共通\tools\01_压缩工具\7z\7z1900-x64.exe
echo.
pause
echo.

cls
echo *****************************************************************
echo 开始安装office2019...
start \\172.29.139.1\share01\90_共通\tools\12_Office\office2019\00_Install_Office2019.bat
echo.
pause
echo.

cls
echo *****************************************************************
echo 开始安装RTX...
start \\172.29.139.1\share01\90_共通\tools\90_RTX\rtxclient2015formal.exe
echo.
pause
echo.

cls
echo *****************************************************************
echo 开始安装McAfee...
mkdir %d%\tools\
copy \\172.29.139.1\share01\90_共通\tools\24_杀毒软件\McAfeeSmartInstall.exe %d%\tools\
start %d%\tools\McAfeeSmartInstall.exe
echo.
echo McAfee安装文件即将清理，按任意键继续...
echo.
pause>nul
echo 正在删除tools文件夹...
echo.
rd /s /q %d%\tools\ && echo 删除完成！
echo.
pause
echo.

cls
echo *****************************************************************
echo 开始安装PDF阅读器...
echo.
start \\172.29.139.1\share01\90_共通\tools\02_PDF阅读器\AdobeAcrobatX\AcrobatPro_10_Web_WWEFD.exe
echo 1、选择 英语
echo 2、选择 Install the trial version
echo 3、选择 Complete
echo 4、安装路径保持不变，重要！
echo.

echo ※安装完成后再执行破解操作！！！按任意键继续...
pause>nul
echo 开始复制amtlib.dll文件...
echo Yes | copy "\\172.29.139.1\share01\90_共通\tools\02_PDF阅读器\AdobeAcrobatX\amtlib破解文件\amtlib.dll"  "C:\Program Files (x86)\Adobe\Acrobat 10.0\Acrobat"
mkdir "C:\Program Files (x86)\Adobe\Acrobat 10.0\Acrobat\Locale\zh_CN"
echo 开始复制zh_CN文件...
xcopy "\\172.29.139.1\share01\90_共通\tools\02_PDF阅读器\AdobeAcrobatX\zh_CN" "C:\Program Files (x86)\Adobe\Acrobat 10.0\Acrobat\Locale\zh_CN\"  /E/R/I/D/Y
echo.
echo ※破解完成！在软件设置中，更改语言:打开软件按"Ctrl+K" --- International --- Application Language --- Choose at application startup --- 重启软件，选择"中文（简体）"
echo.
pause
echo.
echo 正在删除Adobe Acrobat X文件夹...  && echo 删除完成
rd /s /q %d%\"Adobe Acrobat X"
echo.
echo ※※※※※※※※※※※※※※※※※※ 即将退出脚本 ※※※※※※※※※※※※※※※※※※
ping 127.0.0.1 -n 5 > nul

:exit
exit