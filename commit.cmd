@echo off
if "%1" == "g" (
  git commit
  goto :end
)
if "%1" == "git" (
  git commit
  goto :end
)
if "%1" == "s" (
   call  commit-svn.cmd
   goto :end
 )
 if "%1" == "svn" (
   call  commit-svn.cmd
   goto :end
 )
:end


