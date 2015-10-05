#!/bin/bash

service ssh start
/opt/hadoop/sbin/start-dfs.sh
/opt/hadoop/sbin/start-yarn.sh

# TODO: open a shell to avoid stop the docker container. Maybe is there is a better/elegant solution.
/bin/bash

