#! /usr/bin/env bash

APP_PATH=`pwd`
if [ -d $APP_PATH/nginx/logs ]; then
    echo "env has setup"
else
    mkdir -p nginx/logs
    ln -s $APP_PATH/app $APP_PATH/nginx/html
fi

