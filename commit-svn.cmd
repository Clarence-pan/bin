git stash
git checkout work
call update-svn.cmd
git rebase git-svn
echo git svn dcommit
git stash pop

