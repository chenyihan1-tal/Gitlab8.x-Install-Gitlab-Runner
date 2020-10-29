#!/bin/sh

## 创建用户
if id -u $username >/dev/null 2>&1; then
        echo "user exists"
else
        useradd --comment 'GitLab Runner' --create-home gitlab-runner --shell /bin/bash
fi

## 安装
rm -rf /usr/bin/gitlab-runner

curl -L --output /usr/bin/gitlab-runner https://raw.githubusercontent.com/xavierror/Gitlab8.x-Install-Gitlab-Runner/main/gitlab-ci-multi-runner-linux-386-v1.11.2

chmod +x /usr/bin/gitlab-runner

gitlab-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner

## 启动
nohup /usr/bin/gitlab-runner run >> /home/gitlab-runner.log 2>&1 &

## 查看进程
ps -aux | grep gitlab-runner
