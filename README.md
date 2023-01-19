# hk4e

#### hk4e game server

## 编译和运行环境

* Go >= 1.18
* Protoc >= 3.21
* Protoc Gen Go >= 1.28

> 1. 首次需要安装工具 `make dev_tool`
> 2. 生成协议 `make gen_natsrpc && make gen_proto`
> 3. 生成配置表 `make gen_csv`

## 快速运行

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
