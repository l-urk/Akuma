@echo off
echo RUN AS ADMIN FOR ANY EFFECTIVENESS
rmdir /s /q C:\Akuma
rmdir /s /q C:\Amuka
rmdir /s /q C:\Demon
rmdir /s /q C:\VvZnOpGvHw
echo y| del "%userprofile%\Start Menu\Programs\Startup\Akuma.lnk"
echo y| del "%userprofile%\Start Menu\Programs\Startup\Demon.lnk"
echo y| del "%userprofile%\Start Menu\Programs\Startup\Win.lnk"
echo y| del "%userprofile%\Start Menu\Programs\Startup\beyondbirthday.lnk"
taskkill /IM ncat.exe
taskkill /IM ngrok.exe
taskkill /IM frpc.exe
taskkill /IM cmd.exe
pause
