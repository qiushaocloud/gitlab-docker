CURR_DIR=$(cd "$(dirname "$0")"; pwd)

if [ ! -f "$CURR_DIR/.env" ];then
  echo "file $CURR_DIR/.env is not exist"
  exit
fi

GITLAB_VOLUMES_RUNNER_CONFIG=`grep GITLAB_VOLUMES_RUNNER_CONFIG $CURR_DIR/.env|grep -v grep|awk -F '=' '{print $2}' | sed 's/ //g' | sed "s/'//g" | sed 's/\"//g'`
if [ ! -f "$GITLAB_VOLUMES_RUNNER_CONFIG/config.toml" ];then
  echo "file $GITLAB_VOLUMES_RUNNER_CONFIG/config.toml is not exist, copy $CURR_DIR/test-volumes/runner-config/config.toml to $GITLAB_VOLUMES_RUNNER_CONFIG/config.toml"
  mkdir $GITLAB_VOLUMES_RUNNER_CONFIG
  copy $CURR_DIR/test-volumes/runner-config/config.toml $GITLAB_VOLUMES_RUNNER_CONFIG/config.toml
fi

docker-compose up -d