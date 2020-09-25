#!/bin/sh
echo "App rebuild..."
read -p "请输入应用程序名称:" appname
read -p "请设置你的容器内存大小(默认256):" ramsize
if [ -z "$ramsize" ];then
	ramsize=256
fi
ibmcloud target --cf
ibmcloud cf push
echo "Rebuild completed."
