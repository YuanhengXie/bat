::�õ�ϵͳ��Ϣ.bat������bat�ļ�����
::ϵͳ��Ϣ�����HTML�ļ�,�鿴������ wmic /?
::wmic [ϵͳ������] list [brief|full] /format:hform. >|>> [�ļ���]
@echo off

CHCP 936

set f=%USERPROFILE%\Desktop

::�ű���ʼ

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