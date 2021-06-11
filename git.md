# Sync your fork
git fetch upstream
git checkout master
git merge upstream/master

# git upstream
git remote -v
git remote add upstream <UPSTREAM_URL>