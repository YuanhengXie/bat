::得到系统信息.bat，运行bat文件即可
::系统信息输出到HTML文件,查看帮助： wmic /?
::wmic [系统参数名] list [brief|full] /format:hform. >|>> [文件名]
@echo off

CHCP 936

set f=%USERPROFILE%\Desktop

::脚本开始

wmic bios list brief   /format:hform > %f%\PCinfo.html
wmic baseboard list brief   /format:hform >>%f%\PCinfo.html
wmic cpu list full /format:hform >>%f%\PCinfo.html
wmic os list full /format:hform >>%f%\PCinfo.html
wmic computersystem  list brief   /format:hform >>%f%\PCinfo.html
wmic diskdrive list full /format:hform >>%f%\PCinfo.html
wmic memlogical list full /format:hform >>%f%\PCinfo.html

cls

start %f%\PCinfo.html

exit