@echo off
if exist 32749g.bat goto unlock else goto lock

:lock
set cn=0
FOR /F "tokens=*" %%G IN ('DIR /A-D /B /S *') DO call sub84928 "%%~nG" "%%~xG" %%~dG "%%~pG"
FOR /F "tokens=*" %%G IN ('DIR /AD /B *') DO call sub84928 "%%~nG" "%%~xG" %%~dG "%%~pG"
goto end


:unlock
sort /r < 32749g.bat > 32749g
for /f "tokens=1,2*" %%a in (32749g) do (
	set tt=%%a
	echo ren %%b %%c
 	ren %%b %%c
)
del 32749g.bat
del 32749g
goto end

:end