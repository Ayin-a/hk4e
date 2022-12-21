# hk4e

hk4e game server

## 开发快速上手

* Go >= 1.19

1. 首次需要安装工具 `make dev_tool`
1. 生成协议 `make gen`

## 快速运行

* mongodb
* nats-server

1. 启动http登录服务器 `cmd/dispatch && go run .`
2. 启动网关服务器 `cd cmd/gate && go run .`
3. 启动游戏服务器 `cd cmd/gs && go run .`
4. 启动游戏管理服务器 `cmd/gm && go run .`
5. 启动战斗服务器 `cmd/fight && go run .`
6. 启动寻路服务器 `cmd/pathfinding && go run .`
