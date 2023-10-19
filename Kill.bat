@echo off
echo RUN AS ADMIN FOR ANY EFFECTIVENESS
rmdir /s /q C:\Akuma
rmdir /s /q C:\A7uma
echo y| del "%userprofile%\Start Menu\Programs\Startup\Akuma.lnk"
echo y| del "%userprofile%\Start Menu\Programs\Startup\Demon.lnk"
echo y| del "%userprofile%\Start Menu\Programs\Startup\Win.lnk"
echo y| del "%userprofile%\Start Menu\Programs\Startup\beyondbirthday.lnk"
taskkill /IM nc.exe
taskkill /IM chisel.exe
taskkill /IM cmd.exe
pause
