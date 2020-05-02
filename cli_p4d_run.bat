@echo off

IF NOT EXIST %~dp0bin           mkdir %~dp0bin
IF NOT EXIST %~dp0var           mkdir %~dp0var
IF NOT EXIST %~dp0data          mkdir %~dp0data

IF NOT EXIST %~dp0bin\p4d.exe   powershell Invoke-WebRequest ftp://ftp.perforce.com/perforce/r20.1/bin.ntx64/p4d.exe -OutFile %~dp0bin\p4d.exe
IF NOT EXIST %~dp0data\db.*     %~dp0bin\p4d.exe -r %~dp0data -L %~dp0var\log -J %~dp0var\journal -p 1666 -xi

%~dp0bin\p4d.exe -r %~dp0data -L %~dp0var\log -J %~dp0var\journal -p 1666