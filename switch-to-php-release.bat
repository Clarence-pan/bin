cd /d d:\xampp\php
::git stash
git checkout release

cd /d d:\xampp

call apache_stop.bat
call apache_start.bat

