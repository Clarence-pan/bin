@echo off
call :run git difftool git-svn work
set confirm=y
set /p confirm=Confirm your commit[Y/n]:
if "%confirm%" == "y" (
    call :run git svn dcommit
)
if "%confirm%" == "Y" (
    call :run git svn dcommit
)

goto :end
:run
  echo RUN: %*
  %*
goto :end

:end