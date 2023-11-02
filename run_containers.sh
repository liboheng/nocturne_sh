#!/bin/bash

# 拉取最新的 Docker 镜像
sudo docker pull mylovedocker/nocturne:latest

# 获取用户输入的容器数量
read -p "请输入你想要启动的容器数量: " container_count

# 根据用户输入的数量启动容器
for i in $(seq 1 $container_count)
do
   sudo docker run -it --name nocturne$i -d mylovedocker/nocturne:latest
done

echo "$container_count 个容器已经启动."
