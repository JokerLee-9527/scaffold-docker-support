# 脚手架基础部件docker支持项目 (进行中)

---

## 该项目主要用于脚手架项目的开发和调试的本地环境

## 使用方法

1. docker-compose.yml 的IP替换为自己的主机IP(网卡的ip)
   
    以太网适配器 vEthernet (DockerNAT):
   
    连接特定的 DNS 后缀 . . . . . . . :
   
    IPv4 地址 . . . . . . . . . . . . : 10.0.75.1
   
    子网掩码  . . . . . . . . . . . . : 255.255.255.0
   
    默认网关. . . . . . . . . . . . . :
   
    (modify the KAFKA_ADVERTISED_HOST_NAME in docker-compose.yml to match your docker host IP (Note: Do not use localhost or 127.0.0.1 as the host ip if you want to run multiple brokers.)
   
    https://github.com/wurstmeister/kafka-docker)

```yaml
    - KAFKA_ADVERTISED_HOST_NAME=172.24.78.129
```

2. 同上修改配置文件的ip ./.docker/logstash/conf.d/logstash.conf
   
   ```conf
    bootstrap_servers => "172.24.78.129:9092"
    hosts => ["172.24.78.129:9200"]
   ```

3. 执行脚本stop_and_start_docker.sh

4. 本来是应该写脚本来添加db和用户的,因为mongoDB脚本不熟,未能完成.
   
   所以请手动创建database=scaffold,username=scaffold,password=scaffold，并给用户scaffold赋予数据库scaffold权限. (这块脚本会尽快补上 TODO)

---

## 脚本说明

1. docker_pull.sh: docker容器比较多, start_docker_XXX.sh脚本会比较慢,用该脚本先下载所以docker 
2. stop_and_start_docker.sh  先停止,删除上次运行docker的文件,重新启动docker
3. start_docker.sh  启动docker
4. stop_docker.sh  停止docker

## 配置参数

1. 数据库mysql: todo
   
   用户名:micro_server_demo
   
   密码:micro_server_demo
   
   ip:127.0.0.1
   
   端口:3308

2. zookeeper:
   
    ip:127.0.0.1
   
    port:2181
   
   dubbo admin 
   
   [http://127.0.0.1:8082/](http://127.0.0.1:8082/)

3. Redis:todo
   
    ip:127.0.0.1
   
    port:6389

4. Kafak:todo
   
   ip:127.0.0.1
   
   listeners port:9092
   
   注册的zk地址是127.0.0.1:2181

5. zipkin:todo
   
   [http://127.0.0.1:9411/zipkin/](http://127.0.0.1:9411/zipkin/)

6. elasticsearch:todo
   
    http://localhost:9200

7. kibana:todo
   
    http://127.0.0.1:5601

8. mongoDB:
   
   admin http://127.0.0.1:8081/
   
   ip: 127.0.0.1
   
   port: 27017
   
   ROOT_USERNAME: root
   
   ROOT_PASSWORD: example
   
   


