# 脚手架基础部件docker支持项目 (进行中)

---

## 该项目主要用于脚手架项目的开发和调试的本地环境

## Docker参考配置(配置低了可能部分容器启动失败)

![docker_setting.png](.\readme_res\docker_setting.png)





## 使用方法

1. 执行脚本stop_and_start_docker.sh

2. 本来是应该写脚本来添加db和用户的,因为mongoDB脚本不熟,未能完成.
   
   所以请手动创建database=scaffold,username=scaffold,password=scaffold，并给用户scaffold赋予数据库scaffold权限. (这块脚本会尽快补上 TODO)

---

## 脚本说明

1. docker_pull.sh: docker容器比较多, start_docker_XXX.sh脚本会比较慢,用该脚本先下载所以docker 
2. stop_and_start_docker.sh  先停止,删除上次运行docker的文件,重新启动docker
3. start_docker.sh  启动docker
4. stop_docker.sh  停止docker

## 配置参数

1. 数据库mysql 8:  (如果启动mysql5.7参考docker-compose.yml中mysql5.7相关) (单实例)
   
   用户名:micro_server_demo
   
   密码:micro_server_demo
   
   ip:127.0.0.1
   
   端口:3308
   
   

2. zookeeper: (3台最小的集群)
   
   ip:127.0.0.1
   
   zoo1 port:2181
   
   zoo2 port:2182
   
   zoo3 port:2183
   
   GUI工具(直接运行): tools/zookeeper/ZooInspector/zookeeper-dev-ZooInspector.jar
   
   

3. dubbo admin 
   
   [http://127.0.0.1:8082/](http://127.0.0.1:8082/)
   
   用户名: root
   
   密码 : root
   
   ps:  registry.address , config-center, metadata-report.address三类数据存储到了一个集群中(zoo1, zoo2, zoo3)
   
   

4. Redis:todo (单点)
   
    ip:127.0.0.1
   
    port:6389
   
   GUI工具(需要安装): tools/redis/redis-desktop-manager-0.9.5.exe
   
   

5. Kafak:todo
   
   ip:127.0.0.1
   
   listeners port:9092
   
   注册的zk地址是127.0.0.1:2181
   
   GUI工具(需要安装): tools/kafka/kafkatool_64bit.exe
   
   

6. elasticsearch:todo
   
    http://127.0.0.1:9200
   
   

7. kibana:todo
   
    http://127.0.0.1:5601
   
   

8. mongoDB:
   
   admin http://127.0.0.1:8081/
   
   ip: 127.0.0.1
   
   port: 27017
   
   ROOT_USERNAME: root
   
   ROOT_PASSWORD: example
