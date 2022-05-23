#!/bin/sh
cp ~/.zshrc .
cp ~/.config/kitty .
cp ~/.config/nvim .
git add .
git commit -m "update"
git push
