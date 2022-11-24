# hk4e

hk4e game server

## 开发快速上手

* Go >= 1.19

1. 首次需要安装工具 `make dev_tool`
1. 生成协议 `make gen`

## 快速运行

* mongodb
* nats-server

1. 启动dispatch `cmd/dispatch && go run .`
1. 启动gate `cd cmd/gate && go run .`
1. 启动gs `cd cmd/gs && go run .`
