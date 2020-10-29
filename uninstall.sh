#!/bin/sh

## 卸载
gitlab-runner stop
gitlab-runner uninstall

## 清理文件
find / -name gitlab-runner* | xargs rm -r

## 杀掉进程
ps -aux | grep gitlab-runner | awk '{print $2}' | xargs kill

# 删除用户
userdel -r gitlab-runner