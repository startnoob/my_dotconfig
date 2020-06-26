#! /bin/sh
#
# collect.sh
# Copyright (C) 2020 startnoob <1694487365@qq.com>
#
# Distributed under terms of the MIT license.
#
echo "Cleaning the original configurations..."
rm -rf ./configs/*
echo "Done!"
echo "Copying the Neovim configurations..."
cp -r ~/.config/nvim ./configs/
echo "Done!"
echo "Copying the CoC configurations..."
cp -r ~/.config/coc ./configs/
echo "Done!"
echo "Copying the i3wm configurations..."
cp -r ~/.config/i3 ./configs/
echo "Done!"
echo "Copying the Polybar configurations..."
echo "Done!"
cp -r ~/.config/polybar ./configs/
echo "Copying the zsh configurations..."
cp ~/.zshrc ./configs/
cp ~/.p10k.zsh ./configs/
echo "Done!"
echo "Copying the ranger configurations..."
cp -r ~/.config/ranger ./configs/
echo "Done!"
echo "Copying the urxvt configurations..."
cp ~/.Xresources ./configs/
echo "All done!"
