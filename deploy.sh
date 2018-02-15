#!/usr/bin/env bash



hosts="localhost"



for host in $( echo $hosts | tr ',' ' ' )
do


#target host for docker rpc
dockercmd="docker"


BRANCH=$(git branch |awk '{print $2}')

apiport=80




##########################
#teardown old
##########################
echo "Check and Tear Down OLD containers on host"
${dockercmd} ps -a | grep :${apiport} | grep proxy-5330 | grep Up
oval=$?
if [ ${oval} = 0  ]; then
  ${dockercmd} ps -a | grep :${apiport} | grep proxy-5330 | awk '{print $1}' | xargs ${dockercmd} rm -f
fi

#####################################
echo "Running container"
${dockercmd} run -d --restart=always \
    -p ${apiport}:80 \
    -e host=${host} \
    --name=proxy-5330-prod \
     jread/proxy-5330:latest

done
