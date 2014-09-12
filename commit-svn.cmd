@echo off
call :run git stash
call :run git checkout work
call :run call update-svn.cmd
call :run git rebase git-svn
call :run echo git svn dcommit
call :run git stash pop

goto :end
:run
  echo RUN: %*
  %*
goto :end

:end