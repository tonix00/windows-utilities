@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
SET /a pid=8668
FOR /f "skip=3delims=" %%a IN ('tasklist') DO (
 SET "found=%%a"
 SET /a foundpid=!found:~26,8!
 IF %pid%==!foundpid! echo found %pid%=!found:~0,24%!
)

GOTO :EOF