@echo off
echo THIS KILL FILE IS FOR AKUMA
echo IT MUST BE RUN AS ADMIN FOR FULL EFFECTIVE KILL
echo ...press enter to skip timer...
timeout /t 10
rmdir /s /q C:\Akuma
rmdir /s /q C:\Amuka
rmdir /s /q C:\A7uma
rmdir /s /q C:\Demon
rmdir /s /q C:\ShiniGami
rmdir /s /q C:\VvZnOpGvHw
echo y| del "%userprofile%\Start Menu\Programs\Startup\Akuma.lnk"
echo y| del "%userprofile%\Start Menu\Programs\Startup\Demon.lnk"
echo y| del "%userprofile%\Start Menu\Programs\Startup\Win.lnk"
echo y| del "%userprofile%\Start Menu\Programs\Startup\BeyondBirthday.lnk"
powershell Add-MpPreference -ExclusionPath "$env:homedrive\Akuma"
netsh advfirewall firewall delete rule name="Akumanc"
netsh advfirewall firewall delete rule name="Akumachisel"
taskkill /IM ncat.exe /F
taskkill /IM nc.exe /F
taskkill /IM chisel.exe /F
timeout /t 3
taskkill /IM cmd.exe /F
