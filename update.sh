#!/bin/sh

git rm --ignore-unmatch .zshrc
git rm --ignore-unmatch .gitconfig
git rm --ignore-unmatch -rf ./nvim
git rm --ignore-unmatch -rf ./kitty
git rm --ignore-unmatch -rf ./ghostty
git rm --ignore-unmatch -rf repoavg.sh

cp ~/.zshrc ./
cp ~/.gitconfig ./
cp -R ~/.config/nvim ./
cp -R ~/.config/kitty ./
cp -R ~/.config/ghostty ./
cp ~/.config/repoavg.sh ./

git add . && git commit -m "update" && git push
