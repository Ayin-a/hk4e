# hk4e

hk4e game server

## 开发快速上手

* Go >= 1.18

> 1. 首次需要安装工具 `make dev_tool`
> 2. 生成协议 `make gen`

## 快速运行

#### 第三方组件

* mongodb
* nats-server
* redis

#### 启动顺序

> 1. 启动节点服务器(仅单节点 有状态) `cd cmd/node && go run .`
> 2. 启动http登录服务器(可多节点 无状态) `cd cmd/dispatch && go run .`
> 3. 启动网关服务器(可多节点 有状态) `cd cmd/gate && go run .`
> 4. 启动战斗服务器(可多节点 有状态 非必要) `cd cmd/fight && go run .`
> 5. 启动寻路服务器(可多节点 无状态 非必要) `cd cmd/pathfinding && go run .`
> 6. 启动游戏服务器(可多节点 有状态) `cd cmd/gs && go run .`
> 7. 启动游戏管理服务器(仅单节点 无状态) `cd cmd/gm && go run .`

#### 其它

* 配置运行时环境变量

```shell
GOLANG_PROTOBUF_REGISTRATION_CONFLICT=ignore
```
