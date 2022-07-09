# qiushaocloud gitlab-docker 源码，以及 Docker 安装 Gitlab 和 Gitlab-Runner

#### 介绍
这是一个 gitlab docker ，请使用 docker-compose 跑起来，根据自己的需求进行配置，配置信息在 .env 文件配置

* **GitLab**
  GitLab 是利用 Ruby on Rails 框架开发的一款开源的版本管理系统，实现一个自托管的 Git 项目仓库，可通过 Web 界面进行访问公开的或者私人项目。

* **GitLab Runner**
  GitLab Runner 是一个开源项目，用于运行您的作业并将结果发送回GitLab。它与GitLab CI一起使用，GitLab CI是GitLab随附的开源持续集成服务，用于协调作业。

  

#### 使用说明

1.  执行命令授予执行脚本权限：`sed -i -e 's/\r$//' *.sh && chmod -R 755 *.sh`
2.  执行 `copy .env.tpl .env`，并且配置 .env
3.  根据 .env 文件 GITLAB_VOLUMES_RUNNER_CONFIG 所填写内容，将 test-volumes/runner-config/config.toml 拷贝到 $GITLAB_VOLUMES_RUNNER_CONFIG 处，被根据自己的需要配置 config.toml
4.  运行 ./run-docker.sh 【注：docker-compose 低版本识别不了 .env，需要进行升级，作者用的版本是: 1.29.2】
5.  查看日志: docker logs qiushaocloud-gitlab-ce-server



#### 项目配置 Runner 请参考

地址：[https://www.qiushaocloud.top/2022/07/09/zhuan-zai-gitlab-and-gitlab-runner-cicd.html](https://www.qiushaocloud.top/2022/07/09/zhuan-zai-gitlab-and-gitlab-runner-cicd.html)



#### config.toml 示例
``` tom
concurrent = 3
check_interval = 0

[session_server]
  session_timeout = 1800

[[runners]]
  name = "qiushaocloud-runner"
  url = "https://www.qiushaocloud.top:61124"
  token = "xxxxxxx"
  executor = "docker"
  [runners.custom_build_dir]
  [runners.cache]
    [runners.cache.s3]
    [runners.cache.gcs]
    [runners.cache.azure]
  [runners.docker]
    tls_verify = false
    image = "docker:latest"
    privileged = false
    disable_entrypoint_overwrite = false
    oom_kill_disable = false
    disable_cache = false
    volumes = ["/cache","/var/run/docker.sock:/var/run/docker.sock"]
    pull_policy = "if-not-present"
    shm_size = 0
```



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