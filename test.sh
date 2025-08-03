#First time writting a bash script

echo "What is your commit message?: "
read commit_message

git add .
git commit -m "$commit_message"
git push origin main