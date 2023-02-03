# hk4e

## 简介

#### 『原神』 Game Server But Golang Ver.

#### 代号hk4e中的hk起源于『Honkai Impact 3rd』

#### 项目的客户端协议和配置表主要基于3.2版本修改而来，因此请尽量使用3.2版本的客户端，但不是必须的

[3.2.0国际服客户端下载链接](https://autopatchhk.yuanshen.com/client_app/download/pc_zip/20221024103618_h2e3o3zijYKEqHnQ/GenshinImpact_3.2.0.zip)

#### 客户端需要本地https代理和打破解补丁才能正常使用，详情请参考目前主流私服连接方法

## 编译和运行环境

* Go >= 1.18
* Protoc >= 3.21
* Protoc Gen Go >= 1.28
* Docker >= 20.10
* Docker Compose >= 1.29

#### 本项目未使用CGO构建，理论上Windows、Linux、MaxOS系统都可以编译运行

## 快速启动

* 首次需要安装工具

```shell
make dev_tool
```

* 生成协议

```shell
make gen_natsrpc      # 生成natsrpc协议
make gen_proto        # 生成客户端协议
make gen_client_proto # 生成客户端协议代理(非必要 详见gate/client_proto/README.md)
```

* 构建

```shell
make build         # 构建服务器二进制文件
make docker_config # 复制配置模板等文件
make docker_build  # 构建镜像
```

* 启动

```shell
make gen_csv # 生成配置表
cd docker
# 启动前请先确保各服务器的配置文件正确(如docker/node/bin/application.toml)
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
* fight 战斗服务器 (可多节点 有状态 非必要 未启动由gs接管)
* pathfinding 寻路服务器 (可多节点 无状态 非必要 未启动由gs接管)
* gs 游戏服务器 (可多节点 有状态)
* gm 游戏管理服务器 (仅单节点 无状态)

#### 其它

* 独立运行需要配置环境变量

```shell
GOLANG_PROTOBUF_REGISTRATION_CONFLICT=ignore
```

## 代码提交规范

* 提交前**必须**进行go fmt(GoLand可在commit窗口的设置里勾选，默认是启用的)
* 进行全局格式化时，请跳过gdconf目录，这是配置表数据，包含大量的json、lua、txt等文件
* 单行注释的注释符与注释内容之间需要加一个空格(GoLand可在设置Editor/CodeStyle/Go/Other里打开)
* 导入包时需要将标准库、本地包、第三方包用空行分开(GoLand可在设置Editor/CodeStyle/Go/Imports里打开)
