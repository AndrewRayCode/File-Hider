@echo off
if %2==".bat" goto iend
set r=%random%
set /a r+=10000
set /a cn+=1
set r=%r%%cn%
set drive=%3
set path=%4
set fyle=%1
set ext=%2
set line=000000000%cn%
set line=%line:~-6%
echo %line% "%drive%%path:~1,-1%%r%" "%fyle:~1,-1%%ext:~1,-1%">>32749g.bat
ren "%drive%%path:~1,-1%%fyle:~1,-1%%ext:~1,-1%" %r%
echo renamed "%fyle:~1,-1%%ext:~1,-1%" to "%drive%%path:~1,-1%%r%"
:iend