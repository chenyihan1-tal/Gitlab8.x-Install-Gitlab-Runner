# Gitlab8.x-Install-Gitlab-Runner

## 介绍

为Gitlab8.x安装gitlab-runner


## 使用

1. 安装

    ```
    curl -L https://raw.githubusercontent.com/xavierror/Gitlab8.x-Install-Gitlab-Runner/main/install.sh | bash
    ```

2. 注册

    ```
    gitlab-runner register
    ```

## 自启

```
echo "@reboot nohup /usr/bin/gitlab-runner run >> /home/gitlab-runner.log 2>&1 &" >> /var/spool/cron/${USER}
```

## 卸载

```
curl -L https://raw.githubusercontent.com/xavierror/Gitlab8.x-Install-Gitlab-Runner/main/uninstall.sh | bash
```
