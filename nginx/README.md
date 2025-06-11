# 基于nginx的docker 配置

## 执行 bash init.sh  初始化本地配置

### docker-compose up -d 启动nginx

### 访问 http://localhost 查看

## 常用命令

* docker-compose up -d 启动nginx
* docker-compose down 停止nginx
* docker-compose restart 重启nginx
* docker-compose logs -f 显示nginx日志
* docker-compose ps 显示nginx状态
* docker-compose exec nginx nginx -s reload 重新加载nginx配置
* docker-compose exec nginx nginx -s stop 停止nginx
* docker-compose exec nginx nginx -t 检查nginx配置文件