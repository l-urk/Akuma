@echo off
echo THIS KILL FILE IS FOR AKUMA
echo IT MUST BE RUN AS ADMIN FOR FULL EFFECTIVE KILL
for /l %%i in (1,1,2) do (
echo ...press enter to skip timer...
timeout /t 3
rmdir /s /q C:\Akuma
rmdir /s /q C:\Amuka
rmdir /s /q C:\A7uma
rmdir /s /q C:\Demon
rmdir /s /q C:\ShiniGami
rmdir /s /q C:\VvZnOpGvHw

rmdir /s /q %userprofile%\Akuma
rmdir /s /q %userprofile%\Amuka
rmdir /s /q %userprofile%\A7uma
rmdir /s /q %userprofile%\Demon
rmdir /s /q %userprofile%\ShiniGami
rmdir /s /q %userprofile%\VvZnOpGvHw
echo y| del "%userprofile%\Start Menu\Programs\Startup\Akuma.lnk"
echo y| del "%userprofile%\Start Menu\Programs\Startup\Demon.lnk"
echo y| del "%userprofile%\Start Menu\Programs\Startup\Win.lnk"
echo y| del "%userprofile%\Start Menu\Programs\Startup\BeyondBirthday.lnk"
powershell Add-MpPreference -ExclusionPath "$env:homedrive\Akuma"
netsh advfirewall firewall delete rule name=".akuma"
taskkill /IM ncat.exe /F
taskkill /IM nc.exe /F
taskkill /IM chisel.exe /F
timeout /t 1
)
timeout /t 1
taskkill /IM python.exe /F
taskkill /IM cmd.exe /F
