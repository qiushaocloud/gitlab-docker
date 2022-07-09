# qiushaocloud gitlab-docker source code, and Docker install Gitlab and Gitlab-Runner

#### introduce
This is a gitlab docker , please use docker-compose to run it and configure it according to your own needs. The configuration information is configured in the .env file

* **GitLab**
  GitLab is an open source version management system developed using the Ruby on Rails framework. It implements a self-hosted Git project repository that can access public or private projects through a web interface.

* **GitLab Runner**
  GitLab Runner is an open source project for running your jobs and sending the results back to GitLab. It works with GitLab CI, the open source continuous integration service that comes with GitLab to coordinate jobs.

  

#### Instructions for use

1. Execute the command to grant permission to execute the script: `sed -i -e 's/\r$//' *.sh && chmod -R 755 *.sh`
2. Execute `copy .env.tpl .env` and configure .env
3. According to the content filled in the .env file GITLAB_VOLUMES_RUNNER_CONFIG, copy test-volumes/runner-config/config.toml to $GITLAB_VOLUMES_RUNNER_CONFIG, and configure config.toml according to your needs
4. Run ./run-docker.sh [Note: The lower version of docker-compose cannot recognize .env and needs to be upgraded. The version used by the author is: 1.29.2]
5. View logs: docker logs qiushaocloud-gitlab-ce-server



#### Project configuration Runner please refer to

Address: [https://www.qiushaocloud.top/2022/07/09/zhuan-zai-gitlab-and-gitlab-runner-cicd.html](https://www.qiushaocloud.top/2022/07/ 09/zhuan-zai-gitlab-and-gitlab-runner-cicd.html)



#### config.toml example
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
    disable_entrypoint_overwrite=false
    oom_kill_disable = false
    disable_cache = false
    volumes = ["/cache","/var/run/docker.sock:/var/run/docker.sock"]
    pull_policy = "if-not-present"
    shm_size = 0
````



#### Contribute

1. Fork this repository
2. Create a new Feat_xxx branch
3. Submit the code
4. Create a new Pull Request



#### Sharer information

1. Sharer's email: qiushaocloud@126.com
2. [Sharer website](https://www.qiushaocloud.top)
3. [gitlab built by the sharer](https://www.qiushaocloud.top/gitlab/qiushaocloud)
3. [Shared by gitee](https://gitee.com/qiushaocloud/dashboard/projects)
3. [Shared by github](https://github.com/qiushaocloud?tab=repositories)



#### Other reference resources

1. [How to configure GitLab to use HTTPS](reference-gitlab_https_docker_compose.md)