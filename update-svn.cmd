@echo off
::call :run cd %1
::call :run git stash
::call :run git checkout work
::call :run git svn fetch
::call :run git merge git-svn
::call :run git stash pop

set bin=d:\usr\bin
php %bin%\update-svn.php

goto :end
:run
  echo RUN: %*
  %*
goto :end

:end