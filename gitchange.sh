#!/bin/bash

# Gitアカウント情報を変数に格納
work_account=$(cat << EOS
[user]
    name = xxxxxxxx
    email = xxxxxxxxxxx@xx.com
EOS
)

private_account=$(cat << EOS
[user]
    name = xxxxxxx
    email = xxxxxxxxxxx@xx.com
EOS
)

# 引数によってアカウントを切り替える
if [ "$1" = "work" ]; then
    git config --global --replace-all "$work_account"
    echo "Switched to work account."
elif [ "$1" = "private" ]; then
    git config --global --replace-all "$private_account"
    echo "Switched to private account."
else
    echo "Invalid argument. Please specify 'work' or 'private'."
fi

# 現在のアカウント設定を出力
git config --global user.name
git config --global user.email
