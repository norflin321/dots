#!/bin/sh

cp -R ~/.zshrc .
cp ~/.gitconfig .

cp -R ~/.config/zed/settings.json ./zed/
cp -R ~/.config/zed/keymap.json ./zed/
cp -R ~/.config/zed/tasks.json ./zed/
cp -R ~/.config/zed/themes ./zed/themes
cp -R ~/.config/nvim ./nvim

git add .
git commit -m "update"
git push
