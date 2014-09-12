cd %1
git stash
git checkout svn
git svn fetch
git merge git-svn
git checkout work
git merge work
git stash pop
