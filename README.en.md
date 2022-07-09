# gitlab-docker

#### introduce
This is a gitlab docker , please use docker-compose to run it and configure it according to your own needs. The configuration information is configured in the .env file

#### Instructions for use

1. Execute the command to grant permission to execute the script: `sed -i -e 's/\r$//' *.sh && chmod -R 755 *.sh`
2. Execute `copy .env.tpl .env` and configure .env
3. According to the content filled in the .env file GITLAB_VOLUMES_RUNNER_CONFIG, copy test-volumes/runner-config/config.toml to $GITLAB_VOLUMES_RUNNER_CONFIG, and configure config.toml according to your needs
4. Run ./run-docker.sh [Note: The lower version of docker-compose cannot recognize .env and needs to be upgraded. The version used by the author is: 1.29.2]
5. View logs: docker logs qiushaocloud-gitlab-ce-server

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