#!/bin/bash

set -e

echo "📁 正在创建本地挂载目录..."

# nginx 持久化目录
mkdir -p $HOME/docker/nginx/{www,logs,config}
#初始化文件
cp -Rf ./config $HOME/docker/nginx/
cp -Rf ./www $HOME/docker/nginx/
cp -Rf ./logs $HOME/docker/nginx/

echo "✅ 初始化完成，请运行：docker-compose up -d"
