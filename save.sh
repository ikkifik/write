#!/bin/bash

git add . 
git commit -m "$1"
git push origin main    
echo "Changes saved and pushed to remote repository."

npx hexo clean && npx hexo g && npx hexo d
echo "Hexo site generated and deployed."

echo "All tasks completed successfully."
read -p "Press [Enter] key to exit..."
exit 0
