@echo off
if "%1" == "a" ( 
  git add %2 %3 %4 %5 %6 %7 %8 %9
  goto :end
)
if "%1" == "c" (
  git commit %2 %3 %4 %5 %6 %7 %8 %9
  goto :end
)
if "%1" == "ac" (
  git add .
  git commit
  goto :end
)

git %*

:end
