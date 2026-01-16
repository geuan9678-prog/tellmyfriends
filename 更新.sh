#!/bin/bash

REPO_PATH="/var/mobile/Documents/tellmyfriends-master"

cd "$REPO_PATH" || { echo "仓库路径不存在！"; exit 1; }

git config --global --add safe.directory "$REPO_PATH"

# 拉取主仓库
git pull

# 更新子模块（可选）
git submodule update --init --recursive

# 添加修改
git add .

# 提交修改
git diff --cached --quiet || git commit -m "更新"

# 推送
git push

echo "操作完成 ✅"