cd %1
git stash
git checkout work
git svn fetch
git merge git-svn
git stash pop
