#!/bin/sh

git rm --ignore-unmatch .zshrc
git rm --ignore-unmatch .p10k.zsh
git rm --ignore-unmatch .gitconfig
git rm --ignore-unmatch -rf ./nvim
git rm --ignore-unmatch -rf ./kitty
git rm --ignore-unmatch -rf ./ghostty

cp ~/.zshrc ./
cp ~/.p10k.zsh ./
cp ~/.gitconfig ./
cp -R ~/.config/nvim ./
cp -R ~/.config/kitty ./
cp -R ~/.config/ghostty ./

git add . && git commit -m "update" && git push
