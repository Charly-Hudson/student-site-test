$commitMessage = Read-Host("Enter commit message: ")

git status
git add .
git commit -m $commitMessage
git push
git status