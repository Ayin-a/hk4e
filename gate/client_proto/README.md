# 客户端协议代理功能

## 功能介绍

#### 开启本功能后，网关服务器以及游戏服务器等其他服务器，将预先对客户端上行和服务器下行的协议数据做前置转换，采用任意版本的协议文件(必要字段名必须与现有的协议保持一致)均可，避免了因协议序号混淆等频繁变动，而造成游戏服务器代码不必要的频繁改动

## 使用方法

> 1. 在此目录下建立bin目录和proto目录
> 2. 将对应版本的proto协议文件复制到proto目录下并编译成pb.go
> 3. 将client_proto_gen_test.go的TestClientProtoGen方法添加运行配置
> 4. 将运行配置输出目录和工作目录都设置为bin目录
> 5. 运行并生成client_proto_gen.go
> 6. 将client_cmd.csv放入gate和gs和fight服务器的运行目录下
> 7. 将gate和gs和fight服务器的配置文件中开启client_proto_proxy_enable客户端协议代理功能
