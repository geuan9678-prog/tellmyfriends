#!/bin/bash

# 仓库路径
REPO_PATH="/var/mobile/Documents/tellmyfriends-master"

# 进入仓库
cd "$REPO_PATH" || { echo "仓库路径不存在！"; exit 1; }

# 标记为安全目录（只需执行一次，如果已经加过可以注释掉）
git config --global --add safe.directory "$REPO_PATH"

echo "📥 拉取最新代码..."
git pull

# 添加所有更改
git add .

# 提交有改动的文件
if git diff --cached --quiet; then
    echo "⚡ 没有新的改动，跳过提交。"
else
    git commit -m "更新"
    echo "✅ 本地改动已提交。"
fi

# 推送到远程（手动输入用户名和密码）
git push

echo "🚀 操作完成！"