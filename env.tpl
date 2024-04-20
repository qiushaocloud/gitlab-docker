# gitlab server 配置
GITLAB_SERVER_WEB_PORT = 2580
GITLAB_SERVER_SSH_PORT = 2522

# gitlab volumes 配置
GITLAB_VOLUMES_CONFIG = '/srv/docker-volumes/gitlab/config'
GITLAB_VOLUMES_LOGS = '/srv/docker-volumes/gitlab/logs'
GITLAB_VOLUMES_DATA = '/srv/docker-volumes/gitlab/data'

# external_url 配置
EXTERNAL_URL = 'https://youdomainname:25443' # 作者此处配置为作者的gitlab地址: https://www.qiushaocloud.top:61024 (其中 61024 是作者配置 https 转发到 2580)

# gitlab_rails 配置
GITLAB_RAILS_GITLAB_SSH_HOST = 'youdomainname' # 作者此处配置为作者的域名:www.qiushaocloud.top
GITLAB_RAILS_GITLAB_SHELL_SSH_PORT = 2522 # 作者此处在其它机器做了端口映射，此处作者配置为:61023 (www.qiushaocloud.top 下映射的 61023 转发到 2522)
GITLAB_RAIL_INITIAL_ROOT_PASSWORD = 'OVwi2PQQY3GCvvZLHwR3taqpBiNP0pnaU4dgkdFPtEQ=' # 您的 root 密码，后面可以自己注册自己的账号和密码，给管理员即可。注意：密码根据示例修改即可，不知什么原因，自定义一些其它简单的密码登陆不了

# gitlab nginx配置
NGINX_LISTEN_PORT = 80


# gitlab runner 配置
GITLAB_VOLUMES_RUNNER_CONFIG = '/srv/docker-volumes/gitlab/runner-config'
