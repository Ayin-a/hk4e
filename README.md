# hk4e

#### hk4e game server

## 编译和运行环境

* Go >= 1.18
* Protoc >= 3.21
* Protoc Gen Go >= 1.28
* Docker >= 20.10
* Docker Compose >= 1.29

## 快速启动

* 首次需要安装工具

```shell
make dev_tool
```

* 生成协议

```shell
make gen_natsrpc      # 生成natsrpc协议
make gen_proto        # 生成客户端协议
make gen_client_proto # 生成客户端协议代理(非必要)
```

* 构建

```shell
make build        # 构建服务器二进制文件
make docker_build # 构建镜像
```

* 启动

```shell
make gen_csv # 生成配置表
# 启动前请先确保各服务器的配置文件正确
docker-compose up -d # 启动服务器
```

#### 第三方组件

* mongodb
* nats-server
* redis

#### 服务器组件

* node 节点服务器 (仅单节点 有状态)
* dispatch 登录服务器 (可多节点 无状态)
* gate 网关服务器 (可多节点 有状态)
* fight 战斗服务器 (可多节点 有状态 非必要)
* pathfinding 寻路服务器 (可多节点 无状态 非必要)
* gs 游戏服务器 (可多节点 有状态)
* gm 游戏管理服务器 (仅单节点 无状态)

#### 其它

* 配置运行时环境变量

```shell
GOLANG_PROTOBUF_REGISTRATION_CONFLICT=ignore
```
