#!/bin/bash

# Gitアカウント情報を変数に格納
private_name="private_name"
private_email="private@mail.com"

work_name="work_name"
work_email="work@mail.com"

# 引数によってアカウントを切り替える
if [ "$1" = "work" ]; then
    echo "Switching to work account."
    git config --global user.name "$work_name"
    git config --global user.email "$work_email"
    echo "Switched to work account."
elif [ "$1" = "private" ]; then
    echo "Switching to private account."
    git config --global user.name "$private_name"
    git config --global user.email "$private_email"
    echo "Switched to private account."
else
    echo "Invalid argument. Please specify 'work' or 'private'."
fi

# 現在のアカウント設定を出力
echo "Current Git Account Configuration:"
git config --global user.name
git config --global user.email
