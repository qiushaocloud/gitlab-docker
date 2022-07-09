# gitlab-docker

#### 介绍
这是一个 gitlab docker ，请使用 docker-compose 跑起来，根据自己的需求进行配置，配置信息在 .env 文件配置

#### 使用说明

1.  执行命令授予执行脚本权限：`sed -i -e 's/\r$//' *.sh && chmod -R 755 *.sh`
2.  执行 `copy .env.tpl .env`，并且配置 .env
3. 根据 .env 文件 GITLAB_VOLUMES_RUNNER_CONFIG 所填写内容，将 test-volumes/runner-config/config.toml 拷贝到 $GITLAB_VOLUMES_RUNNER_CONFIG 处，被根据自己的需要配置 config.toml
4.  运行 ./run-docker.sh 【注：docker-compose 低版本识别不了 .env，需要进行升级，作者用的版本是: 1.29.2】
5.  查看日志: docker logs qiushaocloud-gitlab-ce-server

#### 参与贡献

1.  Fork 本仓库
2.  新建 Feat_xxx 分支
3.  提交代码
4.  新建 Pull Request


#### 分享者信息

1. 分享者邮箱: qiushaocloud@126.com
2. [分享者网站](https://www.qiushaocloud.top)
3. [分享者自己搭建的 gitlab](https://www.qiushaocloud.top/gitlab/qiushaocloud) 
3. [分享者 gitee](https://gitee.com/qiushaocloud/dashboard/projects) 
3. [分享者 github](https://github.com/qiushaocloud?tab=repositories) 


#### 其它参考资源
1. [如何配置 GitLab 使用 HTTPS](reference-gitlab_https_docker_compose.md)