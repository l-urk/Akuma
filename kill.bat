rmdir /s /q C:\Akuma
rmdir /s /q C:\Amuka
rmdir /s /q C:\Demon
echo y| del %userprofile%\Start Menu\Programs\Startup\Akuma.lnk
echo y| del %userprofile%\Start Menu\Programs\Startup\Demon.lnk
taskkill /IM ncat.exe
taskkill /IM ngrok.exe
timeout /t 3
taskkill /IM cmd.exe
pause