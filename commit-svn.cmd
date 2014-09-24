@echo off
call :run git stash
call :run git checkout work
call :run call update-svn.cmd
call :run git rebase git-svn
call :run git difftool git-svn work
set confirm=y
set /p confirm=Confirm your commit[Y/n]:
if "%confirm%" == "y" (
    call :run git svn dcommit
)
if "%confirm%" == "Y" (
    call :run git svn dcommit
)
call :run git stash pop

goto :end
:run
  echo RUN: %*
  %*
goto :end

:end