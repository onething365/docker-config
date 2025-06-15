#!/bin/bash

set -e

echo "📁 正在创建本地挂载目录..."

# PostgreSQL 持久化目录
mkdir -p $HOME/docker/postgresql/{data,logs,config}

# n8n 持久化目录
mkdir -p $HOME/docker/n8n/{data,logs,config,files,ui}

#  解压 editor-ui,中文支持
tar -xzf editor-ui.tar.gz -C ${HOME}/docker/n8n/ui

echo "🔒 正在设置目录权限..."
echo "✅ 初始化完成，请运行：docker-compose up -d"
