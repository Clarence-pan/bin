@echo off
::call :run git difftool git-svn work
set confirm=y
set /p confirm=
if "%confirm%" == "y" (
    call :confirmed
)
if "%confirm%" == "Y" (
    call :confirmed
)

goto :end
:confirmed
	echo You have confirmed!
:end