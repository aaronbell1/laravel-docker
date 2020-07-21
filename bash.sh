#!/usr/bin/env bash

username="root"

echo
echo $'\e[32;1mPlease choose container to connecto to and hit [ENTER]\e[0m'

docker_containers=(`docker ps --format "{{.Names}}"`)

select container in "${docker_containers[@]}"
do
    script=bash

    echo
    eval "docker exec -u ${username} -it ${container} ${script}"
    \

    break
done
